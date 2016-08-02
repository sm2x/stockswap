package org.stockswap

/**
 * Created by jmiranda on 2/12/14.
 */
public enum PostType {
    OFFER('Offer'),
    NEED('Need')

    String id

    PostType(String id) {
        this.id = id
    }
}