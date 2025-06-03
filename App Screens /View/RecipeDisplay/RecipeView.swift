//
//  RecipeView.swift
//  EasyPan
//
//  Created by Hari's Mac on 01.06.2025.
//

import SwiftUI

struct RecipeView: View {
    let recipe: Recipe
    
    @State private var currentStep = 0
    @State private var isTimerRunning = false
    @State private var timeRemaining: Int
    @State private var timer: Timer?
    @State private var showingCompletionAlert = false
    @State private var animateTitle = false
    @State private var animateSteps = false
    @State private var isLoading = true
    
    init(recipe: Recipe) {
        self.recipe = recipe
        self._timeRemaining = State(initialValue: recipe.cookingTime * 60) // Convert to seconds
    }
    
    var body: some View {
        ZStack {
            if isLoading {
                LoadingView()
                    .onAppear {
                        // Add haptic feedback on load
                        let impactFeedback = UIImpactFeedbackGenerator(style: .medium)
                        impactFeedback.impactOccurred()
                        
                        // Simulate loading time
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            withAnimation(.easeInOut(duration: 0.8)) {
                                isLoading = false
                                animateTitle = true
                            }
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                withAnimation(.easeInOut(duration: 0.6)) {
                                    animateSteps = true
                                }
                            }
                        }
                    }
            } else {
                ScrollView {
                    VStack(spacing: 0) {
                        // Hero Image Section
                        ZStack(alignment: .bottomLeading) {
                            GeometryReader { geo in
                                Image(recipe.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: geo.size.width, height: 350)
                                    .clipped()
                                    .offset(y: -geo.frame(in: .global).minY * 0.5)
                            }
                            .frame(height: 350)
                            
                            // Recipe Title and Info Overlay
                            VStack(alignment: .leading, spacing: 8) {
                                Text(recipe.title)
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .shadow(color: .black.opacity(0.7), radius: 2, x: 1, y: 1)
                                    .scaleEffect(animateTitle ? 1.0 : 0.8)
                                    .opacity(animateTitle ? 1.0 : 0.0)
                                
                                HStack(spacing: 20) {
                                    HStack(spacing: 4) {
                                        Image(systemName: "clock")
                                            .foregroundColor(.white)
                                        Text("\(recipe.cookingTime) min")
                                            .foregroundColor(.white)
                                    }
                                    
                                    HStack(spacing: 4) {
                                        Image(systemName: "list.bullet")
                                            .foregroundColor(.white)
                                        Text("\(recipe.ingredients.count) ingredients")
                                            .foregroundColor(.white)
                                    }
                                }
                                .font(.subheadline)
                                .scaleEffect(animateTitle ? 1.0 : 0.8)
                                .opacity(animateTitle ? 1.0 : 0.0)
                            }
                            .padding(.horizontal, 20)
                            .padding(.bottom, 20)
                        }
                        
                        // Content Section
                        VStack(spacing: 30) {
                            // Ingredients Section
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Ingredients")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                                    ForEach(Array(recipe.ingredients.enumerated()), id: \.offset) { index, ingredient in
                                        HStack {
                                            Image(systemName: "checkmark.circle")
                                                .foregroundColor(.green)
                                            Text(ingredient)
                                                .font(.body)
                                            Spacer()
                                        }
                                        .padding(.horizontal, 12)
                                        .padding(.vertical, 8)
                                        .background(Color.gray.opacity(0.1))
                                        .cornerRadius(8)
                                        .offset(x: animateSteps ? 0 : -50)
                                        .opacity(animateSteps ? 1 : 0)
                                        .animation(.easeInOut(duration: 0.5).delay(Double(index) * 0.1), value: animateSteps)
                                    }
                                }
                            }
                            .padding(.horizontal, 20)
                            
                            // Recipe Steps Section
                            VStack(alignment: .leading, spacing: 20) {
                                Text("Recipe Steps")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                ForEach(Array(recipe.steps.enumerated()), id: \.offset) { index, step in
                                    HStack(alignment: .top, spacing: 15) {
                                        ZStack {
                                            Circle()
                                                .fill(currentStep >= index ? Color.blue : Color.gray.opacity(0.3))
                                                .frame(width: 30, height: 30)
                                            
                                            Text("\(index + 1)")
                                                .font(.system(size: 14, weight: .bold))
                                                .foregroundColor(currentStep >= index ? .white : .gray)
                                        }
                                        
                                        Text(step)
                                            .font(.body)
                                            .foregroundColor(currentStep >= index ? .primary : .secondary)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                    .padding(.vertical, 8)
                                    .scaleEffect(currentStep == index ? 1.05 : 1.0)
                                    .animation(.easeInOut(duration: 0.3), value: currentStep)
                                    .offset(x: animateSteps ? 0 : 50)
                                    .opacity(animateSteps ? 1 : 0)
                                    .animation(.easeInOut(duration: 0.5).delay(Double(index) * 0.1), value: animateSteps)
                                }
                            }
                            .padding(.horizontal, 20)
                            
                            // Timer Section
                            VStack(spacing: 20) {
                                if isTimerRunning {
                                    TimerView(timeRemaining: timeRemaining, totalTime: recipe.cookingTime * 60)
                                        .transition(.scale.combined(with: .opacity))
                                }
                                
                                Button(action: {
                                    toggleTimer()
                                }) {
                                    HStack {
                                        Image(systemName: isTimerRunning ? "pause.circle.fill" : "play.circle.fill")
                                            .font(.title2)
                                        
                                        Text(isTimerRunning ? "Pause Timer" : "Start Cooking")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                    }
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(
                                        LinearGradient(
                                            colors: isTimerRunning ? [.orange, .red] : [.blue, .purple],
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        )
                                    )
                                    .cornerRadius(12)
                                    .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
                                }
                                .scaleEffect(isTimerRunning ? 1.05 : 1.0)
                                .animation(.easeInOut(duration: 0.2), value: isTimerRunning)
                            }
                            .padding(.horizontal, 20)
                            .padding(.bottom, 30)
                        }
                        .background(Color(.systemBackground))
                    }
                }
                .ignoresSafeArea(edges: .top)
            }
        }
        .alert("Recipe Complete!", isPresented: $showingCompletionAlert) {
            Button("Great!") {
                resetTimer()
            }
        } message: {
            Text("Congratulations! You've completed the \(recipe.title) recipe. Enjoy your delicious creation!")
        }
        .onDisappear {
            stopTimer()
        }
    }
    
    private func toggleTimer() {
        let impactFeedback = UIImpactFeedbackGenerator(style: .medium)
        impactFeedback.impactOccurred()
        
        if isTimerRunning {
            stopTimer()
        } else {
            startTimer()
        }
        
        withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
            isTimerRunning.toggle()
        }
    }
    
    private func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
                
                // Update current step based on time
                let stepDuration = (recipe.cookingTime * 60) / recipe.steps.count
                let newStep = (recipe.cookingTime * 60 - timeRemaining) / stepDuration
                
                if newStep != currentStep && newStep < recipe.steps.count {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        currentStep = min(newStep, recipe.steps.count - 1)
                    }
                    
                    // Haptic feedback for step change
                    let notificationFeedback = UINotificationFeedbackGenerator()
                    notificationFeedback.notificationOccurred(.success)
                }
            } else {
                completeRecipe()
            }
        }
    }
    
    private func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    private func resetTimer() {
        stopTimer()
        timeRemaining = recipe.cookingTime * 60
        currentStep = 0
        isTimerRunning = false
    }
    
    private func completeRecipe() {
        stopTimer()
        isTimerRunning = false
        currentStep = recipe.steps.count - 1
        
        // Strong haptic feedback for completion
        let notificationFeedback = UINotificationFeedbackGenerator()
        notificationFeedback.notificationOccurred(.success)
        
        showingCompletionAlert = true
    }
}




#Preview {
    let sampleRecipe = Recipe(title: "Oreo MilkShake", description: "Easy to make and super tasty!", imageName: "Oreo milkshake", cookingTime: 10, difficulty: "Easy", category: "5-Minute Recipe",
                              ingredients:[
                              "2 cups vanilla ice cream",
                              "1 cup milk",
                              "10 Oreo cookies",
                              "2 tbsp chocolate syrup",
                              "Whipped cream",
                              "Extra Oreos for garnish"],
                              steps:
                               [ "Gather all ingredients and equipment needed for the milkshake.",
                              "Crush 8 Oreo cookies into chunky pieces, save 2 for garnish.",
                              "Add vanilla ice cream to blender along with cold milk.",
                              "Pour in chocolate syrup for extra richness and flavor.",
                              "Add the crushed Oreo cookies to the blender mixture.",
                              "Blend on high speed for 30-45 seconds until smooth and creamy.",
                              "Check consistency and add more milk if too thick.",
                              "Pour the milkshake into tall glasses, filling about 3/4 full.",
                              "Top generously with whipped cream and remaining Oreo pieces.",
                              "Serve immediately with straws and enjoy your delicious creation!"]
    )
    RecipeView(recipe: sampleRecipe)
}
