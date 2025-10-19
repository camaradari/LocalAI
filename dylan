# dylan_birthday_tts.py

import pyttsx3

def dylan_birthday_message():
    engine = pyttsx3.init()

    # Optional: Set voice to something gravelly or vintage-sounding
    voices = engine.getProperty('voices')
    for voice in voices:
        if "male" in voice.name.lower() and "english" in voice.name.lower():
            engine.setProperty('voice', voice.id)
            break

    # Dylan-esque phrasing
    message = (
        "Hey there, kid. Happy birthday.\n"
        "Eighteen years old—standing at the crossroads of time.\n"
        "May your heart always be joyful, may your song always be sung.\n"
        "Keep your eyes wide, the chance won’t come again.\n"
        "And remember—don’t follow leaders, watch the parking meters."
    )

    engine.say(message)
    engine.runAndWait()

if __name__ == "__main__":
    dylan_birthday_message()
