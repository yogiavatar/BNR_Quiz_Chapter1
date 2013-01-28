//  
//  QuizViewController.h
//  Quiz2
//
//  Created by Rashmi Bajaj 
//  
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    
    //The model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //The view objects
    IBOutlet UILabel *questionField;  //pointer to UILabel Object where current question is displayed
    IBOutlet UILabel *answerField;  //pointer to the UILabel Object where current answer is displayed
    
}

//instance methods
-(IBAction)showQuestion:(id)sender;
-(IBAction)showAnswer:(id)sender;

@end
