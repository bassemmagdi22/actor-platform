package im.actor.messenger.app.fragment.auth;

import android.widget.EditText;

import im.actor.messenger.app.fragment.BaseFragment;
import im.actor.messenger.app.base.BaseFragmentActivity;
import im.actor.model.AuthState;
import im.actor.model.concurrency.Command;

/**
 * Created by ex3ndr on 31.08.14.
 */
public abstract class BaseAuthFragment extends BaseFragment {

    public BaseAuthFragment() {

    }

    protected void setTitle(int resId) {
        ((BaseFragmentActivity) getActivity()).getSupportActionBar().setTitle(resId);
    }

    protected void setTitle(String title) {
        ((BaseFragmentActivity) getActivity()).getSupportActionBar().setTitle(title);
    }

    protected void executeAuth(Command<AuthState> command) {
        ((AuthActivity) getActivity()).executeAuth(command);
    }

    protected void updateState() {
        ((AuthActivity) getActivity()).updateState();
    }


    protected void focus(final EditText editText) {
        editText.post(new Runnable() {
            @Override
            public void run() {
                editText.requestFocus();
                editText.setSelection(editText.getText().length());
            }
        });
    }
}
