import streamlit as st
import os
from eduppt import generate_ppt_content, create_powerpoint, sanitize_filename

st.set_page_config(page_title="EduDECKS AI Slide Generator", layout="centered")

st.title("🎓 EduDECKS AI Slide Generator")

with st.form("ppt_form"):
    class_level = st.selectbox("Grade level:", [str(i) for i in range(1, 11)], index=4)
    subject = st.selectbox("Subject:", [
        "English", "Maths", "Hindi", "Marathi", "Urdu", "Science", "History", "Civics", "Geography", "Algebra", "Geometry"
    ], index=5)
    topic = st.text_input("Topic:", "Photosynthesis")
    language = st.selectbox("Language", ["English", "Hindi", "Marathi", "Urdu"], index=0)
    num_slides = st.slider("Number of slides (main content)", 3, 10, 5)
    submitted = st.form_submit_button("Generate PowerPoint")

if submitted:
    with st.spinner("Generating slides..."):
        slides = generate_ppt_content(class_level, subject, topic, language, num_slides)
        if isinstance(slides, list):
            filename = sanitize_filename(f"Class{class_level}_{subject}_{topic}_presentation.pptx".replace(" ", ""))
            create_powerpoint(slides, topic, class_level, subject, language)
            with open(filename, "rb") as f:
                st.success("✅ PowerPoint generated!")
                st.download_button("Download PPTX", f, file_name=filename)
            os.remove(filename)
        else:
            st.error(slides) 