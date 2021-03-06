FactoryGirl.define do
	factory :product_operation_nfe_recepcao_evento, class:  BrNfe::Product::Operation::NfeRecepcaoEvento do
		transient do
			endereco_emitente { FactoryGirl.build(:endereco, codigo_municipio: '4216008') }
		end
		env                         :test
		emitente                    { FactoryGirl.build(:product_emitente, endereco: endereco_emitente) }
		ibge_code_of_issuer_uf      '42'
		certificate_pkcs12_path     { "#{BrNfe.root}/test/cert.pfx" }
		certificate_pkcs12_password 'associacao'
		cancelamento                { FactoryGirl.build(:product_evento_cancelamento) }
		numero_lote                   20160345764522
	end
end