<%@ page import="org.stockswap.Facility" %>



			<div class="${hasErrors(bean: facilityInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="facility.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="name" required="" value="${facilityInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: facilityInstance, field: 'name', 'error')}</span>
				</div>
			</div>

