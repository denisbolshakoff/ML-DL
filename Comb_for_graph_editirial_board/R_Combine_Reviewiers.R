{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": []
    },
    "kernelspec": {
      "name": "ir",
      "display_name": "R"
    },
    "language_info": {
      "name": "R"
    }
  },
  "cells": [
    {
      "cell_type": "code",
      "execution_count": null,
      "metadata": {
        "id": "aqDlxwtAwO9z"
      },
      "outputs": [],
      "source": [
        "# Скрипт для получения уникальных записей о связях рецензентов в редакционной коллегии для построения графа-связей.\n",
        "\n",
        "my_txt<-strsplit(readLines(\"1csv.txt\"),split='\\n')\n",
        "\n",
        "new_ = matrix(, nrow = 0, ncol = 2)\n",
        "\n",
        "for (i in 1:length(my_txt)){\n",
        "  new_ = rbind(new_, t(combn(as.numeric(unlist(strsplit(as.character(my_txt[i]),split=','))),2)))\n",
        "  }\n",
        "\n",
        "for (i in 2:nrow(new_)){\n",
        "  if (new_[i,1]>new_[i,2]){\n",
        "    a<-new_[i,2]\n",
        "    new_[i,2]=new_[i,1]\n",
        "    new_[i,1]<-a\n",
        "  }\n",
        "}\n",
        "\n",
        "write.table(unique(new_),\"my_data.txt\",sep=\",\",row.names=F, col.names=F)\n",
        "\n",
        "\n"
      ]
    },
    {
      "cell_type": "code",
      "source": [],
      "metadata": {
        "id": "epqLgC6rx9sk"
      },
      "execution_count": null,
      "outputs": []
    },
    {
      "cell_type": "code",
      "source": [],
      "metadata": {
        "id": "PRoWPGRqwxnC"
      },
      "execution_count": null,
      "outputs": []
    }
  ]
}