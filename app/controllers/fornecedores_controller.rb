class FornecedoresController < ApplicationController
    def index
        @fornecedores = Fornecedor.all.limit(4)
    end

    def novo

    end
end