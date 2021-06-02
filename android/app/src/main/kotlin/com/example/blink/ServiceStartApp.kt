package com.example.dfssdfsdfsdf

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import com.example.blink.MainActivity

class ServiceStartApp : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action.equals("android.intent.action.BOOT_COMPLETED")) {
            val i = Intent(context, MainActivity::class.java)
            i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            context.startActivity(i)
        }
    }
}