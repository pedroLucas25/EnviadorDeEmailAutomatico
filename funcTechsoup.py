import pandas as pd
from openpyxl import load_workbook

def abreAqruivoExcel (localArquivo, nomePlanilha):
    try:
        arquivo = pd.read_excel(localArquivo,sheet_name=nomePlanilha)
    except FileNotFoundError:
        print("Arquivo não encontrado!")
    except Exception as erro:
        print(f'Erro encontrado: {erro.__class__}')
    else:
        return arquivo
    
def abreArquivoCsv (localArquivo):
    try:
        arquivo = pd.read_csv(localArquivo)
    except FileNotFoundError:
        print("Arquivo não encontrado!")
    except Exception as erro:
        print(f'Erro encontrado: {erro.__class__}')
    else:
        return arquivo
    
def salvarExcel (localArquivo, arquivo, nomePlanilha):
    try:
        book = load_workbook(localArquivo)
        writer = pd.ExcelWriter(localArquivo, engine = 'openpyxl') # pylint: disable=abstract-class-instantiated
        writer.book = book
        arquivo.to_excel(writer, index=False, sheet_name=nomePlanilha)
        writer.save()
        writer.close()
    except FileNotFoundError:
        print("Arquivo não encontrado!")
    except Exception as erro:
        print(f'Erro encontrado: {erro.__class__}')
    
def salvarCsv (localArquivo, arquivo):
    try:
        arquivo.to_csv(localArquivo,index=False)
    except Exception as erro:
        print(f'Erro encontrado: {erro.__class__}')
        
def convertePandasLista (arquivo):
    try:
        lista = arquivo.values.tolist()
    except Exception as erro:
        print(f'Erro encontrado: {erro.__class__}')
    else:
        return lista
    