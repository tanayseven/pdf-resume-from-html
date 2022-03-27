PDF résumé from HTML 
====================

### This code lets your write your résumé in HTML + CSS and then compiles it to PDF

### Why?

I don't own a licensed copy of Microsoft Word. I don't want to buy a copy just for creating a résumé. 
Google Docs and Libre Office is not powerful enough for extreme formatting. I gave LaTeX a shot, but it appears
to be a wrong tool to choose for something like a résumé. So here I go. I'm using HTML+CSS for resume.

## How to start developing?

- To setup you need to run `sudo ./configure` (currently only Arch Linux and Ubuntu is supported)
- How I develop is I run `make watch-build` which will start compiling PDF from HTML every 2 seconds.
- Then the `index.html` can be opened in a browser is a live reload/hot reload mode, so you don't have to refresh
- Don't forget to check the output of the PDF format to verify if it's matching the HTML
