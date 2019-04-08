package br.com.juscelinoapps


import org.junit.*
import grails.test.mixin.*

@TestFor(EstruturaController)
@Mock(Estrutura)
class EstruturaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/estrutura/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.estruturaInstanceList.size() == 0
        assert model.estruturaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.estruturaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.estruturaInstance != null
        assert view == '/estrutura/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/estrutura/show/1'
        assert controller.flash.message != null
        assert Estrutura.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/estrutura/list'

        populateValidParams(params)
        def estrutura = new Estrutura(params)

        assert estrutura.save() != null

        params.id = estrutura.id

        def model = controller.show()

        assert model.estruturaInstance == estrutura
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/estrutura/list'

        populateValidParams(params)
        def estrutura = new Estrutura(params)

        assert estrutura.save() != null

        params.id = estrutura.id

        def model = controller.edit()

        assert model.estruturaInstance == estrutura
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/estrutura/list'

        response.reset()

        populateValidParams(params)
        def estrutura = new Estrutura(params)

        assert estrutura.save() != null

        // test invalid parameters in update
        params.id = estrutura.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/estrutura/edit"
        assert model.estruturaInstance != null

        estrutura.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/estrutura/show/$estrutura.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        estrutura.clearErrors()

        populateValidParams(params)
        params.id = estrutura.id
        params.version = -1
        controller.update()

        assert view == "/estrutura/edit"
        assert model.estruturaInstance != null
        assert model.estruturaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/estrutura/list'

        response.reset()

        populateValidParams(params)
        def estrutura = new Estrutura(params)

        assert estrutura.save() != null
        assert Estrutura.count() == 1

        params.id = estrutura.id

        controller.delete()

        assert Estrutura.count() == 0
        assert Estrutura.get(estrutura.id) == null
        assert response.redirectedUrl == '/estrutura/list'
    }
}
