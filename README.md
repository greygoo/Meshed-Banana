# THIS IS WORK IN PROGRESS, PLEASE IGNORE UNTIL THIS MESSAGE IS REMOVED *


# Meshed Banana

## What is it?
Meshed Banana is LoRa Router for the Reticulum Mesh protocol. It consists of a ESP32 LoRa device connected to a Banana Pi Zero M2 running the reticulum mesh network stack.

_Why a Banana Pi Zero?_
_Simply due to the sparsity of the Raspberry Pi Zero, the Banana Pi version was chosen as it has the same size and thus can be exchanged, giving you the option of a Meshed Raspberry. All build instructions given here can also be applied to a raspberry pi zero, only the Banana Pi Zero disk image will not work on a Raspberry Pi, a working image will be provided in the future._
 
## What can it do?
Other than mesh networking projects like e.g. meshtastic, the reticulum stack is not restricted to a LoRa network, but can also be used over other rf based networks like cb radio as well as internet protocols like TCP/IP or I2P. This enables users to bridge LoRa networks into the internet and thus giving the ability to connect separated rf based networks or extend connectivity via rf.

The "downside" of the reticulum stack is that it is not running on the microprocessor itself, but is written in python and thus requires some python capable system - here the banana pi zero (it is not yet micropython capable, the main missing part is the python cryptography module).

## What can't it do?
Reticulum, despite its stability, is still in an early stage. Therefor a number of features have not yet been implemented. Also, it is an own protocol, requiring applications to make use of it. Currently there are only a number of examples and a chat application that can be used for testing. However - creating your own applications in Python is not very difficult and an introduction can be found here: <link to reticulum own apps>. So here a short overview of what works and what does not work yet:

Works:
- Mesh network functionality over TCP/IP, I2P, KISS, LoRa
- SMS like direct 1on1 chat using a terminal application or an Android phone
- Serving and accessing pages written in a markdown like language
- Dending and receiving files
- Using the reticulum capable [Sideband Android App](https://unsigned.io/sideband/)

Does not work (yet)
- group chat
- a lot I can't think of right now ;)

For more details on reticulum features and a roadmap, please check out the [documentation on reticulum](https://markqvist.github.io/Reticulum/manual/)  
  
## How does it work?
The principle of Meshed Banana is to connect on one side to other LoRa nodes in range and on the other side to a local Wifi network. It then runs a reticulum mesh node which is accessible from Wifi and LoRa and forwards reticulum packages from one network to the other.
This gives some possible use cases:
- Run sensors in a LoRa network, and access the data via your WiFi network on e.g. a mobile phone that runs a reticulum enabled app
- Put a Meshed Banana in your home and in your neighbors home and enjoy your fully private encrypted mesh network
- Connect a cb radio via an TNC to two Meshed Bananas and connect two isolated sites over large distances
- ...

## What does it include?
Meshed Banana tries to make it as easy as possible to use reticulum, therefor it consists of:
- stl files for a case<link>
- instructions on how to connect everything<link>
- a banana pi zero m2 armbian image including all required software<link>

## Why don't you just connect a ESP32 Lora device to your Laptop?
That would be too easy ;)
The main reason for this project was to create a device that can be given to unexperienced user to enable him to take part in a LoRa Mesh network withou much for him to setup.
