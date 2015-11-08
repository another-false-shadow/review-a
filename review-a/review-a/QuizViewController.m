//
//  QuizViewController.m
//  review-a
//
//  Created by Dark Realm Studios+ on 2015-11-07.
//  Copyright (c) 2015 Dark Realm Studios+. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLabel, *answerLabel;
@property (nonatomic) int currentQuestion;
@property (nonatomic, copy) NSArray *questions, *answers;

@end

@implementation QuizViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.questions = @[@"From what is cognac made?", @"What is 7+7?", @"What is the capital of Vermont"];
        self.answers = @[@"Grapes", @"14", @"Montpelier"];
    }
    
    return self;
}

- (IBAction)showQuestion:(id)sender_ {
    if (++self.currentQuestion >= [self.questions count])
        self.currentQuestion = 0;
    
    self.questionLabel.text = self.questions[self.currentQuestion];
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender_ {
    self.answerLabel.text = self.answers[self.currentQuestion];
}

@end
