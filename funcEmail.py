from selenium.webdriver import Firefox
from selenium.webdriver.common.keys import Keys
import funcTechsoup as ts
import time

def enviaEmailSemAnexo (msg,assunto,user,passw,lista):
    browser = Firefox(executable_path=r'C:\\geckodriver.exe')
    browser.get('https://mail.google.com/mail/u/0/h/1pq68r75kzvdr/?v%3Dlui')
    time.sleep(10)

    emailEntrada = browser.find_element_by_id('identifierId')
    time.sleep(1)
    emailEntrada.click()
    emailEntrada.send_keys(user)
    time.sleep(1)

    botaoNext = browser.find_element_by_id('identifierNext')
    time.sleep(1)
    botaoNext.click()
    time.sleep(5)

    emailSenha = browser.find_element_by_class_name('whsOnd.zHQkBf')
    time.sleep(1)
    emailSenha.click()
    emailSenha.send_keys(passw)
    time.sleep(1)

    botaoNext1 = browser.find_element_by_id('passwordNext')
    time.sleep(1)
    botaoNext1.click()
    time.sleep(5)

    for email in lista:

        botaoEscrever = browser.find_element_by_xpath("//a[@accesskey='c']")
        time.sleep(1)
        botaoEscrever.click()
        time.sleep(3)

        textoEmail = browser.find_element_by_id('to')
        time.sleep(1)
        textoEmail.click()
        time.sleep(1)
        textoEmail.send_keys(email[1])
        time.sleep(1)

        textoAssunto = browser.find_element_by_xpath("//input[@name='subject']")
        time.sleep(1)
        textoAssunto.click()
        textoAssunto.send_keys(assunto)
        time.sleep(1)

        textoEmail = browser.find_element_by_xpath("//textarea[@name='body']")
        time.sleep(1)
        textoEmail.clear()
        time.sleep(1)
        textoEmail.send_keys(msg)
        time.sleep(1)

        botaoEnviar = browser.find_element_by_xpath("//input[@name='nvp_bu_send']")
        time.sleep(1)
        botaoEnviar.click()
        time.sleep(5)

    browser.close()
    return 0

def enviaEmailComAnexo (msg,assunto,user,passw,lista,anexo):
    browser = Firefox(executable_path=r'C:\\geckodriver.exe')
    browser.get('https://mail.google.com/mail/u/0/h/1pq68r75kzvdr/?v%3Dlui')
    time.sleep(10)

    emailEntrada = browser.find_element_by_id('identifierId')
    time.sleep(1)
    emailEntrada.click()
    emailEntrada.send_keys(user)
    time.sleep(1)

    botaoNext = browser.find_element_by_id('identifierNext')
    time.sleep(1)
    botaoNext.click()
    time.sleep(5)

    emailSenha = browser.find_element_by_class_name('whsOnd.zHQkBf')
    time.sleep(1)
    emailSenha.click()
    emailSenha.send_keys(passw)
    time.sleep(1)

    botaoNext1 = browser.find_element_by_id('passwordNext')
    time.sleep(1)
    botaoNext1.click()
    time.sleep(5)

    for email in lista:

        botaoEscrever = browser.find_element_by_xpath("//a[@accesskey='c']")
        time.sleep(1)
        botaoEscrever.click()
        time.sleep(3)

        textoEmail = browser.find_element_by_id('to')
        time.sleep(1)
        textoEmail.click()
        time.sleep(1)
        textoEmail.send_keys(email[1])
        time.sleep(1)

        textoAssunto = browser.find_element_by_xpath("//input[@name='subject']")
        time.sleep(1)
        textoAssunto.click()
        textoAssunto.send_keys(assunto)
        time.sleep(1)

        textoEmail = browser.find_element_by_xpath("//textarea[@name='body']")
        time.sleep(1)
        textoEmail.clear()
        time.sleep(1)
        textoEmail.send_keys(msg)
        time.sleep(1)

        anexos = browser.find_element_by_xpath("//input[@name='file0']")
        time.sleep(1)
        anexos.send_keys(anexo)
        time.sleep(5)

        botaoEnviar = browser.find_element_by_xpath("//input[@name='nvp_bu_send']")
        time.sleep(1)
        botaoEnviar.click()
        time.sleep(45)

    browser.close()
    return 0