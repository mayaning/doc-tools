#设置编译器
PLANTUML=plantuml
LATEX=xelatex -shell-escape
#记住当前工程的根目录路径
ROOT_DIR=$(shell pwd)
#最终bin文件的名字，可以更改为自己需要的
OUTPUT_DIR=$(ROOT_DIR)/outputs
#将以下变量导出到子shell中，本次相当于导出到子目录下的makefile中
export PLANTUML LATEX ROOT_DIR OUTPUT_DIR
#注意这里的顺序，需要先执行SUBDIRS最后才能是DEBUG
.PHONY:all
all:pdf

uml:ECHO
	make -C $@

pdf:uml
	$(LATEX) -output-dir=$(OUTPUT_DIR) docs/0001-IAM方案讨论会议纪要20220331.tex
	$(LATEX) -output-dir=$(OUTPUT_DIR) docs/0002-IAM现有实现梳理.tex

ECHO:
	@echo $(SUBDIRS)

.PHONY:clean
clean:
	make -C uml clean
	@rm -rf $(OUTPUT_DIR)/*.log
	@rm -rf $(OUTPUT_DIR)/*.aux
	@rm -rf $(OUTPUT_DIR)/*.toc
	@rm -rf $(OUTPUT_DIR)/*.out
	@rm -rf $(OUTPUT_DIR)/*.listing
	@rm -rf $(OUTPUT_DIR)/_minted*

distclean:clean
	@rm -rf $(OUTPUT_DIR)/*.pdf
	@rm -rf $(OUTPUT_DIR)/*.docx
	@rm -rf $(OUTPUT_DIR)/*.md

