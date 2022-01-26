PHONY:=all

# 编译文件
.PHONY: all
all: pdf # docx markdown

# 生成pdf文档
pdf:
	xelatex -output-dir=outputs docs/*.tex

# 生成Word文档
# docx:
# 	pandoc -f latex -t docx xxx.tex -o outputs/xxx.docx

# 生成Markdown文档
# markdown:
# 	pandoc -f latex -t markdown xxx.tex -o outputs/xxx.md

# 清除编译过程文件
.PHONY: clean
clean:
	rm -rf outputs/*.log
	rm -rf outputs/*.aux
	rm -rf outputs/*.toc
	rm -rf outputs/*.out
	rm -rf outputs/*.listing
	rm -rf outputs/_minted*

# 清除编译生成的所有文件
.PHONY: clean_all
distclean: clean
	rm -rf outputs/*.pdf
	rm -rf outputs/*.docx
	rm -rf outputs/*.md
