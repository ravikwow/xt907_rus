.class public Lcom/android/contacts/CallContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "CallContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 47
    .local v0, "contactUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->finish()V

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    .line 70
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v2, "vnd.android.cursor.item/contact"

    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    const-string v2, "com.android.contacts.CallContactActivity"

    sget-object v3, Lcom/motorola/contacts/util/MEDialer$DialFrom;->FAVORITES:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {p0, v0, v2, v3}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/contacts/activities/TransactionSafeActivity;Landroid/net/Uri;Ljava/lang/String;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 65
    .local v1, "newIntent":Landroid/content/Intent;
    sget-object v2, Lcom/motorola/contacts/util/MEDialer$DialFrom;->FAVORITES:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {p0, v1, v2}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/contacts/CallContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->finish()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->finish()V

    .line 77
    :cond_0
    return-void
.end method
