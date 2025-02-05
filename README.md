# Introductory to Godot Workshop!
Learn how to create games with Godot by creating your first basic game!

- [**What is Godot?**](#what-is-godot)
- [**Installing Godot**](#installing-godot)
- [**Exploring the engine**](#exploring-the-engine)
- [**Godot Terms**](#godot-terms)
- [**Planning out our game!**](#planning-out-our-game)
- [**Dino Time**](#dino-time)

# What is Godot? 
![image](https://github.com/user-attachments/assets/afc258b2-e435-4bb6-b407-0a5dec36d055)

A game engine is a tool that allows for ease of creation of games. Game engines have features that make it easy to make whatever you can dream up! An example of some features common in game engines are the following:
- Physics Engines - The engine automatically does physics calculations for you, abstracting a lot of math!
- Display Rendering and Shading Engines - Game engines abstract the compleixty that goes into creating a display on your screen
- Ease of accessing controls - Game engines make it easy to allow users to interact with the softare by having hardware events for interaction with keyboards, mice, controllers, or any other type of input.
- Sound Engines - Game engines feature sound engines allowing it easy to play sounds on a computer.
- More! - Game engines have tons of technically challenging features abstracted

Some well known game engines are Unity, Unreal Engine, Godot, CryEngine, GameMaker, PyGame, RPGMaker, and Scratch.

You can also create your own game engine using any programming language! It is pretty involved as you have to figure out how to interact with the computer to display and make sounds on your own but these challenges can be really rewarding to solve!

## What sets Godot apart from other game engines?

A number of features set Godot apart from the pack.

1) Godot is completely **free**
   
This is really critical. A lot of game engines are free for personal use but cost money if you want to actually make professional games with them. Godot is free no matter if you are a huge development team or a solo developer making games for fun!


2) Godot is **lightweight**
   
Upon downloading the game enigne, you will notice how easy it is to use on your computer! Game engines are historically large programs that consume a lot of memory and processing power. Godot on the otherhand is very easy to run on any computer and its download size is around 500 MB, smaller than most social media apps! It can also run on any type of computer!

3) Godot is **Open-Source**


<img width="997" alt="Screenshot 2025-02-03 at 7 06 02 PM" src="https://github.com/user-attachments/assets/069296d0-a919-4b00-b7f7-602119322aa5" />
An open-source application is an application that's sourcecode is publicly available online. The developers of Godot are people in the game development community that use Godot and publicly contribute to the project. What this means is that Goodt will always be free and the community is super supportive and open to allow the app to be prosperious!<br />

4) Godot is **EASY!!!**

Game engines are sterotypically super complicated, packed with tons of features that are poorly explained. Godot is suprisingly insanely easy to get started with. It features a Python-like programming language called GDScript with documentation built into the application. Hovering over any library function allows you to pull up the wiki page for what that function does and how it works. Features mostly behave as you would expect making it super easy to start making games with Godot after getting over the initial learner barrier as you will soon see!

5) Godot is a **new technology**

The last thing that sets Godot apart is that its constantly changing. The fact that it is constantly changing and evolving is super interesting to developers in the industry looking for future ways to streamline the process of making games. This interest in the technology might be something that helps you secure an interview where you can talk about your experience with this technology (this is something I experienced when interviewing with **Riot Games!!**).

For these reasons, we will be teaching and recommending Godot to be used for LionJam and future game jams!

# Installing Godot

The best way of downloading Godot in my opinion is through the website!

[You can find the download link here!](https://godotengine.org/download)

![image](https://github.com/user-attachments/assets/1d4a7724-d5b4-4969-8d23-bb64309af2df)

You can additionally download it off of Github or Steam but I recommend downloading the latest version from their website since the app is constantly changing and that we you can decide when to update the engine. 

# Exploring the Engine 

<img width="1507" alt="Screenshot 2025-02-05 at 3 55 29 PM" src="https://github.com/user-attachments/assets/5694bced-b5d5-400f-a75f-03ee3560af95" />

Upon opening the engine and creating a new project you should see something like above!

Before we start building lets explore the editor! 

Let us first take a look at the panel on the bottom left.

<img width="275" alt="Screenshot 2025-02-05 at 3 58 37 PM" src="https://github.com/user-attachments/assets/b0f96e4d-ff35-49e5-a88f-50cd96f39d2b" />

This is the file explorer, all the files in our project including our assets (like art, sfx, music, and code) will all be contained in this area. Its up to you how you organize this, but its just to make it easy to find things when working with a lot of files!

res:// is the base directory for your project. If you open the file explorer on your computer and navigate to the place you opened your project in, you should see icon.svg, like we see in the editor!

Epic!!

Next let's take a look at the viewport!

<img width="958" alt="Screenshot 2025-02-05 at 4 02 21 PM" src="https://github.com/user-attachments/assets/e73284cf-c04f-4a63-8f5b-f0966d860d35" />

The viewport is the area shown above. It allows us to see what our game looks like! Once we start adding some stuff to our game we will see the viewport populate. Within the viewport there are a couple of tools to allow you to edit assets on the fly like a scale tool, move tool, and rotate tool. Once you add a camera to your game, it will also show up here so you can see what your game will look like when being played. Last thing to note is there is two version of the viewport, the 2D and 3D version. You can switch between the versions at the top of your screen!

<img width="972" alt="Screenshot 2025-02-05 at 4 09 10 PM" src="https://github.com/user-attachments/assets/c41894e0-4ce9-46bb-895a-b6aba65f1edc" />

The next area we can take a look at is the bottom panel. This is home to some important tools we will use while editing. First is the Output tab. This is where all our error messaegs and print messages will show up - stuff thats pretty important for debugging! Next is the debugger which will let you figure out the values of differnet variables at different times during the run of your game. It will also help you find out where errors are coming from! The audio tab lets you control the volume of different sounds from your game. The animation player is super important - its very powerful. It will probably primarily be used for creating animations though! The shader editor is where you will write shaders for your game!

<img width="269" alt="Screenshot 2025-02-05 at 4 16 09 PM" src="https://github.com/user-attachments/assets/1c63cc8d-f29c-40fa-827b-7e7d9e94830e" />

The last two panels are definitley the most important besides the viewport. First the Hierarchy/Scene Panel is on the left side of the screen. This panel showcases all the **nodes** (we will describe this term soon) that are in the scene. It also shows the hierarchy of nodes (parental relations of objects). Every scene has a root node as a main reference to the scene. It is useful for organizational purposes. Here is what the panel looks like with 1 Node2D in it. 

<img width="272" alt="Screenshot 2025-02-05 at 4 23 47 PM" src="https://github.com/user-attachments/assets/cdcf43ce-e4f4-4b87-a465-82e55037522c" />

The last main panel is the Inspector panel on the right side of the editor. Here we can find all the properties of an object or node like its position, its size, its texture and more! Under the Node tab of the inspector is also a bunch of events also known as **Signals** that can be connected to code when the node is interacted with in certain ways.

<img width="279" alt="Screenshot 2025-02-05 at 4 24 29 PM" src="https://github.com/user-attachments/assets/4b3aca69-bb66-41a3-933d-b4431a6463fb" />

It would also be a good idea to familiarize yourself with the contents of the drop downs at the top of the screen. These are the places where you will be able to change the resolution of your game, save, export, and change the controls. 

<img width="483" alt="Screenshot 2025-02-05 at 4 27 13 PM" src="https://github.com/user-attachments/assets/5091986d-fa67-4263-afbf-71901fc012a2" />

With that, you should be familiar with the layout of the editor!

# Godot Terms

While using Godot, you will come across Nodes and Scenes before working on games with Godot its important to understand what they are and how they work.

## Nodes

In Godot a Node is the base unit object and class. Nodes have base properties and functions. Within Nodes, you can attach scripts that let you program the node and its properties. Additionally, you can attach the signals to functions within the script, allowing them to handle when signals are activated. 

Godot offers a bunch of preset nodes that you will use while making games. The one that will be most important to us is the Node2D. This node features properties such as transform (which is a collection of information such as position, rotation, and scale), it also inherits from the Node base class.

Another example of a Node is a CharacterBody2D node. This node features properties that allow for movement and physics handling. Additionally, it inherits from CollisionObject2D which allows for the node to collide with other collision objects, assuming it has a collision shape. 

Pretty much everything in Godot is a node, so you will see them everywhere! [Heres a video where you can learn about every Node available in Godot!](https://www.youtube.com/watch?v=tO2gthp45MA)

## Scenes

<img width="419" alt="Screenshot 2025-02-05 at 5 06 29 PM" src="https://github.com/user-attachments/assets/2dc9fa8f-cfe1-425a-8529-fb0fe56723c5" />

Now that we know about Nodes, we can explore scenes. Scenes are collections of nodes, with a root node to allow for a hierarchal relationship within the collection. While this relationship allows for organizaiton, it also allows for you to combine different nodes together. The properties of children follow the properties of the parent. For example, if one Node2D is the child of another Node2D, and the parents position is being updated, the child will move around relative to the parent. 

This allows for us to combine nodes to create all sorts of objects. For example, you might use a scene as a collection of nodes that represent a playable character, that will feature a node that controls the animations and a collision shape node and maybe the item the character is holding in its hand.

With a scene like a character, we can then put that scene within another scene like the level. This is called nesting!

The nesting of scenes allows for you to keep your project super organized with each type of object (including menus and UI) having its own scene!

Scenes are another super important topics. [I highly recommend checking out Brackey's Godot intro where he goes super into the scene system!](https://www.youtube.com/watch?v=LOhfqjmasi0)

# Planning out our game!

The game that we will be making for the workshop is a clone of the google dinosaur game! 

https://github.com/user-attachments/assets/f459a610-bea2-45fe-bb45-70a064fe10fe

Here's the assets we are gonna need for our game:
- A sprite for the character
- A jumping sfx for when the character jumps
- A sprite for the ground
- A sprite for the things we are jumping over
- A sprite for the clouds

With all of that, we will be able to bring it all into Godot to make our game!

I have provided some assets that I will be using in the Github repository! 

# Dino Time!
