import gradio as gr
from transformers import pipeline

generator = pipeline("text-generation", model="gpt2")

def generate_text(prompt):
    results = generator(prompt, max_length=50, num_return_sequences=1)
    return results[0]['generated_text']

def main():
    iface = gr.Interface(
        fn=generate_text,
        inputs=gr.Textbox(lines=2, placeholder="Enter your prompt..."),
        outputs="text",
        title="LLM Demo",
        description="A simple LLM demo using Hugging Face."
    )
    iface.launch(server_name="0.0.0.0", server_port=8000)

if __name__ == "__main__":
    main()