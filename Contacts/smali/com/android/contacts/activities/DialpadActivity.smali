.class public Lcom/android/contacts/activities/DialpadActivity;
.super Landroid/app/Activity;
.source "DialpadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/DialpadActivity$ViewVisibilityListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z


# instance fields
.field private mFragment:Lcom/android/contacts/dialpad/DialpadFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/activities/DialpadActivity;->DBG:Z

    .line 48
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/activities/DialpadActivity;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0xa

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f040040

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 73
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0700c5

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/dialpad/DialpadFragment;

    iput-object v1, p0, Lcom/android/contacts/activities/DialpadActivity;->mFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 85
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 90
    iget-object v0, p0, Lcom/android/contacts/activities/DialpadActivity;->mFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 167
    iget-object v0, p0, Lcom/android/contacts/activities/DialpadActivity;->mFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    instance-of v0, v0, Lcom/android/contacts/activities/DialpadActivity$ViewVisibilityListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/contacts/activities/DialpadActivity;->mFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/contacts/activities/DialpadActivity$ViewVisibilityListener;->onVisibilityChanged(Z)V

    .line 169
    sget-boolean v0, Lcom/android/contacts/activities/DialpadActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "DialpadActivity"

    const-string v1, "onPause, onVisibilityChanged to false."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 158
    iget-object v0, p0, Lcom/android/contacts/activities/DialpadActivity;->mFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    instance-of v0, v0, Lcom/android/contacts/activities/DialpadActivity$ViewVisibilityListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/contacts/activities/DialpadActivity;->mFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/activities/DialpadActivity$ViewVisibilityListener;->onVisibilityChanged(Z)V

    .line 160
    sget-boolean v0, Lcom/android/contacts/activities/DialpadActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "DialpadActivity"

    const-string v1, "onResume, onVisibilityChanged to true."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 104
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 106
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/activities/DialpadActivity;->mFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->getDigitsWidget()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 109
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
