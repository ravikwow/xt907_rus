.class public final Lcom/android/contacts/preference/ContactsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "ContactsPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static isEmpty(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f050003

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x4

    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 43
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 46
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 69
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->finish()V

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
