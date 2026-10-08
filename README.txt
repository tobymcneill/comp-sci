CompSci Practice — OCR Computer Science
======================================

START
-----
Double-click Start_CompSci_Practice.vbs. It opens the study app in your
browser and runs the local server in the background. Use the Stop app button
in the top bar to shut down the local server. The launcher stops an older copy
before starting the app, so it is safe to run it again after an update.

PAPER LIBRARY
-------------
The portable package includes your extracted question data in its `papers`
folder. The app reads that folder wherever you extract the package. It does not
upload your full library to any service.

FEATURES
--------
- Questions arranged by 24 detailed OCR specification subtopics, grouped under
  their main sections (for example, 1.1.1 Structure and function of the
  processor and 1.3.2 Databases).
- Filters for Paper 1 / 2, AS / A-level, marks, session and answered status.
- Visible marks badge on every question card and the question detail panel.
- Search by keywords or topic code. Put your OpenAI API key in api.txt beside
  app.py and choose Ask AI to semantically rank related question parts.
- Write answers and request formative AI marking against the paper's attached
  mark scheme and examiner report PDFs when available.
- Upload or photograph handwritten answers from an iPhone. Open the private
  phone link shown in AI settings while both devices are on the same Wi-Fi.
  Uploaded photos are saved in `uploaded_work` beside the app.
- Hide or show the topic sidebar and question list with the controls above the
  questions. The question practice view expands to use the available space.
- Answers are saved in this browser on this PC. Your API key is read locally
  from api.txt by the app and is never sent to the browser.

AI REQUIREMENTS
---------------
AI search and marking require an OpenAI API key and API account billing. A
ChatGPT subscription alone does not include API usage. Without a key, normal
keyword search and the question library still work. When you request AI
marking or AI search, the selected question, your answer (for marking), and
relevant attached reference text are sent to OpenAI's Responses API. If you
upload a handwritten photo, it is also sent to OpenAI when you click Mark my
answer with AI. No answer or photo is sent until you request AI marking.

The model is set to gpt-4o-mini by default. If the selected model is not
available to your API project, the app automatically tries gpt-4o-mini and
gpt-4.1-mini. To choose another model, set OCR_STUDY_MODEL before launching.
If all models are rejected, check your API project model access and any
organization verification requirement; a ChatGPT subscription does not grant
API model access.

TROUBLESHOOTING
---------------
- The package contains your current question library. To add future extracted
  papers, copy their extracted folders into the bundled `papers` folder.
- Paste your OpenAI API key as the only text in the api.txt path shown in AI settings.
  Keep the file private and do not share it.
- If the app cannot open, confirm the Microsoft Store Python 3.11 alias is
  installed. You can also start it from PowerShell with:
  python app.py
- The app uses port 8770 on localhost. Set OCR_STUDY_PORT to another free port
  if that port is already in use.
- For iPhone uploads, keep both devices on the same trusted Wi-Fi and use the
  private phone link displayed in AI settings. The link changes when the app
  restarts. If the page does not load, Windows Firewall may need to allow Python
  on your private network.
