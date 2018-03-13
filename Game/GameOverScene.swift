//
//  GameOverScene.swift
//  Game
//
//  Created by 钟凡 on 2017/5/10.
//  Copyright © 2017年 钟凡. All rights reserved.
//

import SpriteKit

class GameOverScene: SKScene {
    
    init(size: CGSize, won:Bool) {
        
        super.init(size: size)
        
        // 1
        backgroundColor = SKColor.white
        
        // 2
        let message = won ? "You Won!" : "You Lose"
        
        // 3
        let label = SKLabelNode(fontNamed: "Chalkduster")
        label.text = message
        label.fontSize = 40
        label.fontColor = SKColor.black
        label.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(label)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
        let scene = Games(size: self.size)
        self.view?.presentScene(scene, transition:reveal)
    }
    // 6
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
