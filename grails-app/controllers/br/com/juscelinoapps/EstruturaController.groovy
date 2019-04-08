package br.com.juscelinoapps

import org.springframework.dao.DataIntegrityViolationException

class EstruturaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [estruturaInstanceList: Estrutura.list(params), estruturaInstanceTotal: Estrutura.count()]
    }

    def create() {
        [estruturaInstance: new Estrutura(params)]
    }

    def save() {
        def estruturaInstance = new Estrutura(params)
        if (!estruturaInstance.save(flush: true)) {
            render(view: "create", model: [estruturaInstance: estruturaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'estrutura.label', default: 'Estrutura'), estruturaInstance.id])
        redirect(action: "show", id: estruturaInstance.id)
    }

    def show(Long id) {
        def estruturaInstance = Estrutura.get(id)
        if (!estruturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estrutura.label', default: 'Estrutura'), id])
            redirect(action: "list")
            return
        }

        [estruturaInstance: estruturaInstance]
    }

    def edit(Long id) {
        def estruturaInstance = Estrutura.get(id)
        if (!estruturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estrutura.label', default: 'Estrutura'), id])
            redirect(action: "list")
            return
        }

        [estruturaInstance: estruturaInstance]
    }

    def update(Long id, Long version) {
        def estruturaInstance = Estrutura.get(id)
        if (!estruturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estrutura.label', default: 'Estrutura'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (estruturaInstance.version > version) {
                estruturaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'estrutura.label', default: 'Estrutura')] as Object[],
                          "Another user has updated this Estrutura while you were editing")
                render(view: "edit", model: [estruturaInstance: estruturaInstance])
                return
            }
        }

        estruturaInstance.properties = params

        if (!estruturaInstance.save(flush: true)) {
            render(view: "edit", model: [estruturaInstance: estruturaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'estrutura.label', default: 'Estrutura'), estruturaInstance.id])
        redirect(action: "show", id: estruturaInstance.id)
    }

    def delete(Long id) {
        def estruturaInstance = Estrutura.get(id)
        if (!estruturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estrutura.label', default: 'Estrutura'), id])
            redirect(action: "list")
            return
        }

        try {
            estruturaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'estrutura.label', default: 'Estrutura'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'estrutura.label', default: 'Estrutura'), id])
            redirect(action: "show", id: id)
        }
    }
}
