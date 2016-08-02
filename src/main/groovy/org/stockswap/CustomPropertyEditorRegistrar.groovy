package org.stockswap

import org.springframework.beans.PropertyEditorRegistrar
import org.springframework.beans.PropertyEditorRegistry
import org.springframework.beans.propertyeditors.CustomDateEditor

import java.text.SimpleDateFormat

/**
 * Created by jmiranda on 3/20/14.
 */
class CustomPropertyEditorRegistrar implements PropertyEditorRegistrar {
    @Override
    void registerCustomEditors(PropertyEditorRegistry registry) {
        // Always set the nullable to true and handle not nullable fields through constraints
        registry.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
    }
}
