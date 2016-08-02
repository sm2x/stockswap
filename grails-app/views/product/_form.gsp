
			<div class="${hasErrors(bean: productInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="product.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="name" required="" value="${productInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: productInstance, field: 'dosage', 'error')} required">
				<label for="dosage" class="control-label"><g:message code="product.dosage.label" default="Dosage" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="dosage" required="" value="${productInstance?.dosage}"/>
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'dosage', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: productInstance, field: 'units', 'error')} required">
				<label for="units" class="control-label"><g:message code="product.units.label" default="Units" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="units" required="" value="${productInstance?.units}"/>
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'units', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: productInstance, field: 'expirationDate', 'error')} ">
				<label for="expirationDate" class="control-label"><g:message code="product.expirationDate.label" default="Expiration Date" /></label>
				<div>
					<bs:datePicker name="expirationDate" precision="day"  value="${productInstance?.expirationDate}" default="none" noSelection="['': '']" />
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'expirationDate', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: productInstance, field: 'quantity', 'error')} required">
				<label for="quantity" class="control-label"><g:message code="product.quantity.label" default="Quantity" /><span class="required-indicator">*</span></label>
				<div>
					<g:field class="form-control" name="quantity" type="number" value="${productInstance.quantity}" required=""/>
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'quantity', 'error')}</span>
				</div>
			</div>

