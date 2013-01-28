//
//  QuizViewController.m
//  Quiz2
//
//  Created by Rashmi Bajaj
//  
//

#import "QuizViewController.h"

@implementation QuizViewController


-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
    {
        // create 2 arrays
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        //add objects to these arrays
        [questions addObject:@"What is 7+7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
        
        //To make the questions start from the first question. If we dont write this, then the show questions starts from the second question in the array
        currentQuestionIndex = [questions count]-1;
    }
    
    //Return the address of the new object
    return self;
}



-(IBAction)showQuestion:(id)sender
{
    //step to the next question
    currentQuestionIndex++;
    
    //if index reaches end of the array, reset index to the first question
    if (currentQuestionIndex == [questions count]) {
        currentQuestionIndex = 0;
    }
    
    //Get the string of the question and display in show question field
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    NSLog(@"current question: %@", question);
    [questionField setText:question];
    
    //clear the answer field
    [answerField setText:@"???"]; 
    
}

-(IBAction)showAnswer:(id)sender
{
    //what is the answer to the current question?
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    [answerField setText:answer];
}


@end
