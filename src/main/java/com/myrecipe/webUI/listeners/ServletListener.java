package com.myrecipe.webUI.listeners;

import com.myrecipe.data_access.sample_databases.SampleDatabase1;

import javax.servlet.ServletContextEvent;

public class ServletListener implements javax.servlet.ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        SampleDatabase1.initializeDatabase();
    }
}
