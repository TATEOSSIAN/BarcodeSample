package dsic.app.barcodesample;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;

import app.dsic.barcodetray.IBarcodeInterface;

public class MainActivity extends Activity {

    /*Barcode AIDL Interface*/
    private IBarcodeInterface mBarcode;

    /*Barcode AIDL Connection Event Handler*/
    private final int SERVICE_CONNECTED = 0;
    private final int SERVICE_DISCONNECTED = 1;
    private ServiceConnectionHandler mServiceConnectionHandler =
            new ServiceConnectionHandler();
    class ServiceConnectionHandler extends Handler{
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what)
            {
                case SERVICE_CONNECTED:
                    Connect();
                    break;
                case SERVICE_DISCONNECTED:
                    Disconnect();
                    break;
            }
        }

        private void Connect()
        {
            try {
                /*Set Receive type to Intent event*/
                mBarcode.SetRecvType(BarcodeDeclaration.RECEIVE_TYPE.INTENT_EVENT.ordinal());
                setNotificationItems();
                setDecodingCharSet();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        private void Disconnect(){}
    }
    /*AIDL Service Connection*/
    private ServiceConnection srvConn =
            new ServiceConnection() {
                @Override
                public void onServiceConnected(ComponentName name, IBinder service) {
                    mBarcode = IBarcodeInterface.Stub.asInterface(service);
                    mServiceConnectionHandler.sendEmptyMessage(SERVICE_CONNECTED);
                }

                @Override
                public void onServiceDisconnected(ComponentName name) {
                    mServiceConnectionHandler.sendEmptyMessage(SERVICE_DISCONNECTED);
                    mBarcode = null;
                }
            };

    BroadcastReceiver mBarcodeReadBroadCast = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("app.dsic.barcodetray.BARCODE_BR_DECODING_DATA")) {
                BarcodeDeclaration.SYMBOLOGY_IDENT symbology_ident =
                        BarcodeDeclaration.SYMBOLOGY_IDENT.fromInteger(
                                intent.getIntExtra("EXTRA_BARCODE_DECODED_SYMBOLE", -1));
                TextView editText = (TextView) findViewById(R.id.editText);
                if (symbology_ident != BarcodeDeclaration.SYMBOLOGY_IDENT.NOT_READ) {
                    String data =
                            "["+symbology_ident.toString()+"]"+
                                    intent.getStringExtra("EXTRA_BARCODE_DECODED_DATA");
                    editText.setText(data);
                }else
                {
                    editText.setText("NOT READ");
                }
            }
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    @Override
    protected void onResume() {
        super.onResume();
        /*AIDL Service connect*/
        bindService(new Intent("app.dsic.barcodetray.IBarcodeInterface"),
                srvConn, BIND_AUTO_CREATE);
        /*Set Broadcast receiver*/
        registerReceiver(mBarcodeReadBroadCast,
                new IntentFilter("app.dsic.barcodetray.BARCODE_BR_DECODING_DATA"));
    }

    @Override
    protected void onPause() {
        super.onPause();
        /*unbind Broadcast receiver*/
        unregisterReceiver(mBarcodeReadBroadCast);
        /*AIDL Service disconnect*/
        unbindService(srvConn);
    }

    public void OnClick(View v)
    {
        switch (v.getId())
        {
            case R.id.btScanStart:
                try{mBarcode.ScanStart();}catch (RemoteException e){e.printStackTrace();}
                break;
            case R.id.btScanStop:
                try{mBarcode.ScanStop();}catch (RemoteException e){e.printStackTrace();}
                break;
            case R.id.btScanEnable:
                try{mBarcode.SetScanEnable(true);}catch (RemoteException e){e.printStackTrace();}
                break;
            case R.id.btScanDisable:
                try{mBarcode.SetScanEnable(false);}catch (RemoteException e){e.printStackTrace();}
                break;
            case R.id.btSetAllSymbologyEnable:
                try{mBarcode.SetAllSymbologyEnable();}catch (RemoteException e){e.printStackTrace();}
                break;
            case R.id.btSetAllSymbologyDisable:
                try{mBarcode.SetAllSymbologyDisable();}catch (RemoteException e){e.printStackTrace();}
                break;
            case R.id.btSetEAN13Enable:
                try{mBarcode.SetSymbologyEnable(BarcodeDeclaration.SYMBOLOGY_ENABLE.EAN13.ordinal(),true);}catch (RemoteException e){e.printStackTrace();}
                break;
            case R.id.btSetEAN13Disable:
                try{mBarcode.SetSymbologyEnable(BarcodeDeclaration.SYMBOLOGY_ENABLE.EAN13.ordinal(),false);}catch (RemoteException e){e.printStackTrace();}
                break;
        }
    }

    public class SpinnerClickListener implements AdapterView.OnItemSelectedListener {
        @Override
        public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
            Spinner spinner = (Spinner)parent;
            switch (spinner.getId())
            {
                case R.id.spNotification:
                    try{mBarcode.SetScanSuccessNoti(position);}catch (RemoteException e){e.printStackTrace();}
                    break;
                case R.id.spEncodingCharSet:
                    String decodingCharSets[] = getResources().getStringArray(R.array.Encoding_CharSet);
                    try{mBarcode.SetDecodingCharset(decodingCharSets[position]);}catch (RemoteException e){e.printStackTrace();}
                    break;
            }
        }

        @Override
        public void onNothingSelected(AdapterView<?> parent) {

        }
    }

    private void setNotificationItems()
    {
        Spinner spinner = (Spinner)findViewById(R.id.spNotification);
        // Create an ArrayAdapter using the string array and a default spinner layout
        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(this,
                R.array.noti_type,android.R.layout.simple_spinner_item);
        // Specify the layout to use when the list of choices appears
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        // Apply the adapter to the spinner
        spinner.setAdapter(adapter);
        int nNotification = 0;
        try {
            nNotification = mBarcode.GetScanSuccessNoti();
        }catch (RemoteException e)
        {
            e.printStackTrace();
        }
        spinner.setSelection(nNotification);
        spinner.setOnItemSelectedListener(new SpinnerClickListener());
    }

    private void setDecodingCharSet()
    {
        Spinner spinner = (Spinner)findViewById(R.id.spEncodingCharSet);
        // Create an ArrayAdapter using the string array and a default spinner layout
        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(this,
                R.array.Encoding_CharSet,android.R.layout.simple_spinner_item);
        // Specify the layout to use when the list of choices appears
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        // Apply the adapter to the spinner
        spinner.setAdapter(adapter);
        String encodingCharSet = "";
        try {
            encodingCharSet = mBarcode.GetDecodingCharset();
        }catch (RemoteException e)
        {
            e.printStackTrace();
        }
        spinner.setSelection(adapter.getPosition(encodingCharSet));
        spinner.setOnItemSelectedListener(new SpinnerClickListener());
    }
}
