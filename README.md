# MIPS-Assembly-Menu-Driven-Hardware-Access-Simulation
 Menu-Driven Hardware Access Simulation
# 📷 MIPS Hardware Access Interface (Simulation Project)

This project presents a **MIPS assembly program** that simulates accessing hardware devices — **camera**, **microphone**, and **storage** — using a menu interface. Although MIPS cannot access hardware directly, this simulation demonstrates how assembly can act as a **logic layer** in a hybrid system.

---

## 🚀 Features

- Interactive CLI menu built with MIPS assembly
- Simulates user choices: take photo, record audio, access storage
- Can be extended to interact with real hardware using a Python script

---

## 📂 Files

| File | Description |
|------|-------------|
| `hardware_interface.asm` | MIPS program with menu and logic |
| `hardware_trigger.py` | Python script to simulate or perform hardware actions |
| `README.md` | This documentation |

---

## 🧪 How to Run

### MIPS Program
1. Open `QtSPIM` or `MARS`.
2. Load and run `hardware_interface.asm`.
3. Input choice (1, 2, or 3) and observe simulated output.

### Python Integration (Optional)
1. Run `hardware_trigger.py` with Python 3:
```bash
python hardware_trigger.py
Choose your simulated action.

💡 Future Ideas
Link MIPS output to file → Python reads → triggers hardware

Add real webcam/photo/audio support using OpenCV, sounddevice, etc.

Create a GUI wrapper around this concept
Meanwhile you too can try .

👨‍💻 Author
Made by **Beauttah**
