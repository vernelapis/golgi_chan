import argparse
import json
import sys

# import os
# import copy
# import tkinter as tk
# from tkinter import ttk
# #from tkinterdnd2 import *
# import tkinter.filedialog
# import tkinter.messagebox
# import tkinter.colorchooser
# # import sys
# import cv2
# import pandas as pd
# import numpy as np
# import math
# import time
# from PIL import Image, ImageTk, ImageOps
# from sympy.geometry import Point, Polygon

SYS_VERSION = 0
IMG_READ_WINDOW = 1

# def imread(filename, flags=cv2.IMREAD_COLOR, dtype=np.uint8):
#     try:
#         n = np.fromfile(filename, dtype)
#         img = cv2.imdecode(n, flags)
#         return img
#     except Exception as e:
#         print(e)
#         return None
#
# def cv2pil(image):
#     ''' OpenCV型 -> PIL型 '''
#     new_image = image.copy()
#     if new_image.ndim == 2:  # モノクロ
#         pass
#     elif new_image.shape[2] == 3:  # カラー
#         new_image = cv2.cvtColor(new_image, cv2.COLOR_BGR2RGB)
#     elif new_image.shape[2] == 4:  # 透過
#         new_image = cv2.cvtColor(new_image, cv2.COLOR_BGRA2RGBA)
#     new_image = Image.fromarray(new_image)
#     return new_image
#
# def importimage():
#     iDir = os.path.abspath(os.path.dirname(__file__))
#     fTyp = [("","*")]
#     file = tkinter.filedialog.askopenfilename(filetypes = fTyp,initialdir = iDir)
#     if file == "":
#         return "break"
#     iDir = file
#
#     CVoriimg = imread(file)
#     if CVoriimg is None:
#         tkinter.messagebox.showerror('GolgiClicker', '画像の読み込みに失敗しました。')
#         return "break"


def run(command):
    if command["cmd"] == SYS_VERSION:
        return {
            "sys.version": sys.version,
        }

    if command["cmd"] == IMG_READ_WINDOW:
        return {
        "sys.version": "python move!"
        }

    else:
        return {"error": "Unknown command."}

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--uuid")
    args = parser.parse_args()
    stream_start = "`S`T`R`E`A`M`{args.uuid}`S`T`A`R`T`"
    stream_end = "`S`T`R`E`A`M`{args.uuid}`E`N`D`"
    while True:
        cmd = input()
        cmd = json.loads(cmd)
        try:
            result = run(cmd)
        except Exception as e:
            result = {"exception": e.__str__()}
        result = json.dumps(result)
        print(stream_start + result + stream_end)
