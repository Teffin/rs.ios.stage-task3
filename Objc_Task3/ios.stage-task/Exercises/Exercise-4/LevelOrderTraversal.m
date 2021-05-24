#import "LevelOrderTraversal.h"

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    
    long indexLevel = -1;
    bool firstNil = true;
    NSMutableArray *returnValue = [[NSMutableArray alloc] init];
    NSMutableArray *treeLevel = [[NSMutableArray alloc] init];
    if (tree.count > 0)
    {
        if (tree[0] == [NSNull null])
        {
            return @[];
        }
    }
    for (id part in tree)
    {

        if (part == [NSNull null])
        {
            if (firstNil)
            {
                firstNil = false;
            }
            else
            {
                [treeLevel removeLastObject];
                indexLevel = [[treeLevel lastObject] intValue];
            }
        }
        else
        {
            indexLevel++;
            [treeLevel addObject:[NSNumber numberWithInteger:indexLevel]];

            if (indexLevel >= [[treeLevel lastObject] intValue])
            {
                [returnValue addObject:[[NSMutableArray alloc] init]];
            }
            [returnValue[indexLevel] addObject:part];
            
    
            firstNil = true;
        }
        

    }

    
    if ([[returnValue lastObject] count] == 0)
    {
        [returnValue removeLastObject];
    }
    return returnValue;
}
