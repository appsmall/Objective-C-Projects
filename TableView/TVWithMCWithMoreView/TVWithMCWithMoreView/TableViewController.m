//
//  TableViewController.m
//  TVWithMCWithMoreView
//
//  Created by Rahul Chopra on 22/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "ViewController.h"

@interface TableViewController ()
{
    NSArray *recipeNames;
    NSArray *recipeTheory;
    NSArray *recipePhoto;
}
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    recipeNames = @[@"Burger",@"Spring Roll",@"Jalebi",@"Pizza",@"Sandwich",@"Dosa",@"Idli",@"Samosa",@"Chopsuey",@"Noodles"];
    recipePhoto = @[@"Spring Roll",@"Spring Roll",@"Jalebi",@"Pizza",@"Sandwich",@"Dosa",@"Idli",@"Samosa",@"Chopsuey",@"Noodles"];
    recipeTheory = @[@"1. To make the burgers, first gather and prepare all of your mise en place. The amount of chili powder needed, will depend on how spicy you like your food and how spicy the chili powder is.\n\n 2. We used this Chili Powder recipe, which was a nice balance of flavor and spice.\n\n 3. Next, place a large fry pan over medium heat. Once the pan is hot, dry-sauté the onions until golden and translucent — adding a touch of water to the pan as needed, so the onions and/or pan do not burn.\n\n 4. Next, add the garlic and cook for 30 seconds or so and then add the mushrooms. Let this cook for 5 minutes or so, or until all of the moisture has cooked out of the mushrooms. At this point, transfer the mushroom mixture to a food processor.\n\n 5. Add the quinoa, black beans, oats, spices and flax meal. Pulse the mixture a few times.\n\n 6. Do not over pulse the mixture, the texture should course/chunky, but still hold together. Taste the mixture for seasoning and adjust.\n\n 7. Note that these burgers can be made a day or two ahead of time and stored in the refrigerator. They also freeze very well.",
                     
        @"1. To make the spring rolls start cooking the noodles according to the directions on the package.\n\n 2. Mix together the carrots, cabbage, bean sprouts, garlic and oil.\n\n 3. Drain the noodles and cut them into 4 cm long pieces and add them to the mixture.\n\n 4. Season with salt, ground black pepper, soy sauce and a pinch of sugar and gently beat the egg.\n\n 5. Remove one spring roll sheet from the pile and place on the work surface. Spread 30 ml of filling in the middle.\n\n 6. Fold over the sides and roll up.",
                     
           @"1. Mix the flour, semolina or rice flour, baking powder, curd and 3/4th cup of the water in a bowl (preferably a ceramic bowl). Mix well with a whisk.\n\n 2. Mix well and then add remaining water and 1/8th tsp. of saffron powder, and whisk until smooth.\n\n 3. Set aside for about 2 hours to ferment.\n\n 4. Prepare one string syrup by dissolving sugar in the water. Just before the syrup is ready add saffron and cardamom powder.\n\n 5. Heat oil in a kadhai. Pour the batter in a steady stream ( or coconut shell with a hole) into the kadhai to form coils. Make a few at a time.\n\n 6. Deep fry them until they are golden and crisp all over but not brown.\n\n 7. Remove from the kadhai and drain on kitchen paper and immerse in the syrup.\n\n 8. Take the jalebi out of syrup and serve hot.",
                     
            @"1. To make the spring rolls start cooking the noodles according to the directions on the package.                                     2. Mix together the carrots, cabbage, bean sprouts, garlic and oil.                                                             3. Drain the noodles and cut them into 4 cm long pieces and add them to the mixture.                                            4. Season with salt, ground black pepper, soy sauce and a pinch of sugar and gently beat the egg.                               5. Remove one spring roll sheet from the pile and place on the work surface. Spread 30 ml of filling in the middle.             6. Fold over the sides and roll up.",@"1. To make the spring rolls start cooking the noodles according to the directions on the package.                                     2. Mix together the carrots, cabbage, bean sprouts, garlic and oil.                                                             3. Drain the noodles and cut them into 4 cm long pieces and add them to the mixture.                                            4. Season with salt, ground black pepper, soy sauce and a pinch of sugar and gently beat the egg.                               5. Remove one spring roll sheet from the pile and place on the work surface. Spread 30 ml of filling in the middle.             6. Fold over the sides and roll up.",@"1. To make the spring rolls start cooking the noodles according to the directions on the package.                                     2. Mix together the carrots, cabbage, bean sprouts, garlic and oil.                                                             3. Drain the noodles and cut them into 4 cm long pieces and add them to the mixture.                                            4. Season with salt, ground black pepper, soy sauce and a pinch of sugar and gently beat the egg.                               5. Remove one spring roll sheet from the pile and place on the work surface. Spread 30 ml of filling in the middle.             6. Fold over the sides and roll up.",@"1. To make the spring rolls start cooking the noodles according to the directions on the package.                                     2. Mix together the carrots, cabbage, bean sprouts, garlic and oil.                                                             3. Drain the noodles and cut them into 4 cm long pieces and add them to the mixture.                                            4. Season with salt, ground black pepper, soy sauce and a pinch of sugar and gently beat the egg.                               5. Remove one spring roll sheet from the pile and place on the work surface. Spread 30 ml of filling in the middle.             6. Fold over the sides and roll up.",@"1. To make the spring rolls start cooking the noodles according to the directions on the package.                                     2. Mix together the carrots, cabbage, bean sprouts, garlic and oil.                                                             3. Drain the noodles and cut them into 4 cm long pieces and add them to the mixture.                                            4. Season with salt, ground black pepper, soy sauce and a pinch of sugar and gently beat the egg.                               5. Remove one spring roll sheet from the pile and place on the work surface. Spread 30 ml of filling in the middle.             6. Fold over the sides and roll up.",@"1. To make the spring rolls start cooking the noodles according to the directions on the package.                                     2. Mix together the carrots, cabbage, bean sprouts, garlic and oil.                                                             3. Drain the noodles and cut them into 4 cm long pieces and add them to the mixture.                                            4. Season with salt, ground black pepper, soy sauce and a pinch of sugar and gently beat the egg.                               5. Remove one spring roll sheet from the pile and place on the work surface. Spread 30 ml of filling in the middle.             6. Fold over the sides and roll up.",@"1. To make the spring rolls start cooking the noodles according to the directions on the package.                                     2. Mix together the carrots, cabbage, bean sprouts, garlic and oil.                                                             3. Drain the noodles and cut them into 4 cm long pieces and add them to the mixture.                                            4. Season with salt, ground black pepper, soy sauce and a pinch of sugar and gently beat the egg.                               5. Remove one spring roll sheet from the pile and place on the work surface. Spread 30 ml of filling in the middle.             6. Fold over the sides and roll up."];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return recipeNames.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    //To show image in TableView Cell on imageView.
    cell.recipeImage.image = [UIImage imageNamed: recipeNames[indexPath.row]];
    
    //To show text in TableView Cell on Label.
    cell.recipeLbl.text = recipeNames[indexPath.row];
    
    return cell;
}




/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ViewController *vc = [segue destinationViewController];
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
   // vc.strText = recipeNames[indexPath.row];
    
    vc.strViewImage = recipeNames[indexPath.row];
    
    vc.strTextView = recipeTheory[indexPath.row];
    
    vc.title = recipeNames[indexPath.row];
   
}


@end







