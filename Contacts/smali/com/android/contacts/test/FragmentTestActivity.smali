.class public Lcom/android/contacts/test/FragmentTestActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "FragmentTestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f040058

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 34
    return-void
.end method
