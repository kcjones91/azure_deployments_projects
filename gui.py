import streamlit as st
import requests

st.title("Hello FastAPI GUI")

if st.button("Say Hello"):
    response = requests.get("http://localhost:8000")
    if response.status_code == 200:
        st.success(response.json()["message"])
    else:
        st.error("Something went wrong.")
