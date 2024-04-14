package com.example.ryan.ga_5autotuner;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;

public class Duke extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_duke);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
    }

    /**
     * Method Name: previous
     * Input Argument: view - Necessary to link to button in application.
     * Return Value: None.
     * Purpose: Goes back to Michael's screen.
     */
    public void previous(View view) {
        /* Finish activity. */
        this.finish();
    }

    /**
     * Method Name: home
     * Input Argument: view - Necessary to link to button in application.
     * Return Value: None.
     * Purpose: Takes the user back to the main activity.
     */
    public void home(View view) {
        /* Create intent to go back to main activity. */
        Intent intent = new Intent(this, MainActivity.class);

        /* Set flag to go back to existing activity. */
        intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);

        /* Start intent. */
        startActivity(intent);
    }


    /**
     * Method Name: next
     * Input Argument: view - Necessary to link to button in application.
     * Return Value: None.
     * Purpose: Goes to Jules' screen.
     */
    public void next(View view) {
        /* Link to new intent. */
        Intent intent = new Intent(this, Jules.class);

        /* Start new intent. */
        startActivity(intent);
    }
}
