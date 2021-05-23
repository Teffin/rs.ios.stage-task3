#import "LevelOrderTraversal.h"

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    
    long i = 0;
    long j = -1;
    NSMutableArray *returnValue = [[NSMutableArray alloc] init];
    NSMutableDictionary *treeLevel = [[NSMutableDictionary alloc] init];
    
    for (id part in tree)
    {
        NSLog(@"%@", part);

        
        if (part == nil)
        {
            continue ;
        }
        else if (i > j)
        {
            [returnValue addObject:[[NSMutableArray alloc] init]];
            //[treeLevel setValue:@2 forKey:i];
            j = i;
        }
        
        [returnValue[i] addObject:part];
        i++;
    }
    NSLog(@"%@", returnValue);

    return returnValue;
}
