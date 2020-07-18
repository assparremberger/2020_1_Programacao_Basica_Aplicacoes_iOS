//
//  main.m
//  Aula_ObjectiveC
//
//  Created by Adalto Selau Sparremberger on 11/07/2020.
//  Copyright © 2020 FSPOA. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        int x = 5;
        float y = 1.1;
        
        NSNumber *valor = [[NSNumber alloc] initWithFloat: 5.5   ];
        
     //   int valorInt = [valor intValue];
        
        NSString *nome = [[NSString alloc] initWithString:@"Adalto" ];
        NSString *sobrenome;
        
        sobrenome = @"Selau";
        

        NSLog(@"\nNome: %@\nSobrenome: %@\nValor: %@",nome, sobrenome, valor);
        
        
    }
    return 0;
}
