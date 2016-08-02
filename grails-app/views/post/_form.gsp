
<div class="form-group ${hasErrors(bean: postInstance, field: 'title', 'error')} required">
	<label for="title" class="control-label col-lg-3"><g:message code="post.title.label" default="Title" /><span class="required-indicator">*</span></label>
	<div class="col-lg-6">
		<g:textField class="form-control" name="title" required="" value="${postInstance?.title}"/>
		<span class="help-inline">${hasErrors(bean: postInstance, field: 'title', 'error')}</span>
		<span class="help-block">Make it </span>
	</div>
</div>

<div class="form-group ${hasErrors(bean: postInstance, field: 'facility', 'error')} required">
	<label for="facility" class="control-label col-lg-3"><g:message code="post.facility.label" default="Facility" /><span class="required-indicator">*</span></label>
	<div class="col-lg-6">
		<g:select class="form-control" id="facility" name="facility.id" from="${org.stockswap.Facility.list()}" optionKey="id" required="" value="${postInstance?.facility?.id}"/>
		<span class="help-inline">${hasErrors(bean: postInstance, field: 'facility', 'error')}</span>
	</div>
</div>


<div class="form-group ${hasErrors(bean: postInstance, field: 'description', 'error')} required">
	<label for="description" class="control-label col-lg-3"><g:message code="post.description.label" default="Description" /><span class="required-indicator">*</span></label>
	<div class="col-lg-6">
		<g:textArea cols="80" rows="5" class="form-control" name="description" required="" value="${postInstance?.description}"/>
		<span class="help-inline">${hasErrors(bean: postInstance, field: 'description', 'error')}</span>
	</div>
</div>

<div class="form-group ${hasErrors(bean: postInstance, field: 'postType', 'error')} required">
	<label for="postType" class="control-label col-lg-3"><g:message code="post.postType.label" default="Post Type" /><span class="required-indicator">*</span></label>
	<div class="col-lg-6">
		<g:select class="form-control" name="postType" from="${org.stockswap.PostType?.values()}" keys="${org.stockswap.PostType.values()*.name()}" required="" value="${postInstance?.postType?.name()}" noSelection="['': '']"/>
		<span class="help-inline">${hasErrors(bean: postInstance, field: 'postType', 'error')}</span>
	</div>
</div>

<div class="form-group ${hasErrors(bean: postInstance, field: 'product', 'error')} required">
	<label for="product" class="control-label col-lg-3"><g:message code="post.product.label" default="Product" /><span class="required-indicator">*</span></label>
	<div class="col-lg-6">
		<g:textField class="form-control" name="product" required="" value="${postInstance?.product}"/>
		<span class="help-inline">${hasErrors(bean: postInstance, field: 'product', 'error')}</span>
	</div>
</div>

<div class="form-group ${hasErrors(bean: postInstance, field: 'dosage', 'error')} required">
	<label for="dosage" class="control-label col-lg-3"><g:message code="post.dosage.label" default="Dosage" /><span class="required-indicator">*</span></label>
	<div class="col-lg-6">
		<g:textField class="form-control" name="dosage" required="" value="${postInstance?.dosage}"/>
		<span class="help-inline">${hasErrors(bean: postInstance, field: 'dosage', 'error')}</span>
	</div>
</div>

<div class="form-group ${hasErrors(bean: postInstance, field: 'expirationDate', 'error')} ">
	<label for="expirationDate" class="control-label col-lg-3"><g:message code="post.expirationDate.label" default="Expiration Date" /></label>
	<div class="col-lg-6">
		<g:datePicker name="expirationDate" precision="day"  value="${postInstance?.expirationDate}" default="none" noSelection="['': '']" cssClass="form-control" styleClass="form-control"/>
		<span class="help-inline">${hasErrors(bean: postInstance, field: 'expirationDate', 'error')}</span>
	</div>
</div>

<div class="form-group ${hasErrors(bean: postInstance, field: 'quantity', 'error')} required">
	<label for="quantity" class="control-label col-lg-3"><g:message code="post.quantity.label" default="Quantity" /><span class="required-indicator">*</span></label>
	<div class="col-lg-6">
		<g:field class="form-control" name="quantity" type="number" value="${postInstance.quantity}" required=""/>
		<span class="help-inline">${hasErrors(bean: postInstance, field: 'quantity', 'error')}</span>
	</div>
</div>

<div class="form-group ${hasErrors(bean: postInstance, field: 'unitOfMeasure', 'error')} required">
	<label for="unitOfMeasure" class="control-label col-lg-3"><g:message code="post.unitOfMeasure.label" default="Unit Of Measure" /><span class="required-indicator">*</span></label>
	<div class="col-lg-6">
		<g:textField class="form-control" name="unitOfMeasure" required="" value="${postInstance?.unitOfMeasure}"/>
		<span class="help-inline">${hasErrors(bean: postInstance, field: 'unitOfMeasure', 'error')}</span>
	</div>
</div>
