package org.yarlithub.dia.repo;


import org.junit.Test;

import static junit.framework.Assert.assertNotNull;

/**
 * Project YIT DIA
 * Created by jaykrish on 5/25/14.
 */
public class ConnectorTest {

    @Test
    public void testConnection() {
        assertNotNull(Connector.getConnection("", "", ""));
    }

}
