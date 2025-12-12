# 🏁 Retro Racer

Retro Racer is a retro-style racing game developed entirely in Assembly Language using a 64,000-pixel graphics mode. This project was created as part of our Computer Organization and Assembly Language (COAL) coursework and focuses on hands-on interaction with low-level system components such as registers, memory, and CPU instructions.

---

## 🎮 Game Overview

In Retro Racer, a single collision ends the race.  
The player controls a car positioned at the bottom of the screen while avoiding enemy cars and collecting bonus stars as the environment scrolls vertically.

---

## 🛠️ Key Concepts Implemented

- Direct manipulation of registers, memory, and buses
- Low-level graphics rendering using a custom `draw_rectangle` subroutine
- Vertical landscape scrolling using `REP MOVSB` (Intel 8088)
- Static player positioning with dynamic environment movement
- Keyboard-controlled car movement
- Randomized enemy cars and bonus objects
- Collision detection and scoring logic

---

## 🎨 Design Approach

The entire game environment follows a simple design philosophy:  
**Everything is a rectangle.**

All visual elements — roads, cars, flowers, stars, and obstacles — are rendered using a reusable `draw_rectangle` subroutine. This approach simplified rendering logic and improved maintainability at the assembly level.

---

## ⚙️ Scrolling Mechanism

To bring the static landscape to life, vertical scrolling was implemented by:
1. Fetching a row from the bottom of the screen
2. Shifting the entire screen down by one row
3. Reinserting the fetched row at the top

This operation is efficiently handled using the `REP MOVSB` string instruction on Intel 8088.

---

## 🚧 Project Status

- Core gameplay: Completed ✅
- Enemy logic & scoring: Completed ✅
- Intro screen: In progress 🛠️
- Ending screen: In progress 🛠️

---

## 🤝 Team

- Zunaira Tahir  
- Machinery IS Life

---

## 📚 Learning Outcomes

This project strengthened understanding of:
- System-level programming
- Memory-efficient graphics manipulation
- Instruction-level optimization
- Translating theoretical architecture concepts into real-world behavior

---

## 📌 Notes

This project was developed for educational purposes and focuses on low-level learning rather than high-level graphics or engines.

---

## ⭐ Feedback

Feel free to explore the code, open issues, or suggest improvements.
