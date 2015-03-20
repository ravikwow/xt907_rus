.class public Lcom/android/calendar/CalendarSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "CalendarSettingsActivity.java"


# instance fields
.field private mAccounts:[Landroid/accounts/Account;

.field mCheckAccounts:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHideMenuButtons:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHandler:Landroid/os/Handler;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHideMenuButtons:Z

    .line 123
    new-instance v0, Lcom/android/calendar/CalendarSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarSettingsActivity$1;-><init>(Lcom/android/calendar/CalendarSettingsActivity;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCheckAccounts:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/CalendarSettingsActivity;)[Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/CalendarSettingsActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mAccounts:[Landroid/accounts/Account;

    return-object v0
.end method

.method private buildLocalAccountHeaders(Ljava/util/List;)V
    .locals 11
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
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 139
    const v0, 0x7f0c00ad

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, "phoneCalStr":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "account_name"

    aput-object v3, v2, v10

    const-string v3, "account_type"

    aput-object v3, v2, v4

    const-string v3, "account_type=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "LOCAL"

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 146
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 148
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    new-instance v6, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v6}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 152
    .local v6, "accountHeader":Landroid/preference/PreferenceActivity$Header;
    iput-object v9, v6, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 154
    const-string v0, "com.android.calendar.selectcalendars.SelectCalendarsSyncFragment"

    iput-object v0, v6, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 156
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v7, "args":Landroid/os/Bundle;
    const-string v0, "account_name"

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "account_type"

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput-object v7, v6, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 160
    const/4 v0, 0x1

    invoke-interface {p1, v0, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 161
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 164
    .end local v6    # "accountHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_2
    return-void

    .line 164
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public hideMenuButtons()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHideMenuButtons:Z

    .line 135
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 11
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
    .line 48
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v7, 0x7f060002

    invoke-virtual {p0, v7, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 50
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 51
    .local v1, "accounts":[Landroid/accounts/Account;
    if-eqz v1, :cond_1

    .line 52
    array-length v5, v1

    .line 53
    .local v5, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 54
    aget-object v2, v1, v4

    .line 55
    .local v2, "acct":Landroid/accounts/Account;
    const-string v7, "com.android.calendar"

    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    .line 56
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 57
    .local v0, "accountHeader":Landroid/preference/PreferenceActivity$Header;
    iget-object v7, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v7, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 58
    const-string v7, "com.android.calendar.selectcalendars.SelectCalendarsSyncFragment"

    iput-object v7, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 60
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v3, "args":Landroid/os/Bundle;
    const-string v7, "account_name"

    iget-object v8, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v7, "account_type"

    iget-object v8, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iput-object v3, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 64
    const/4 v7, 0x1

    invoke-interface {p1, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 53
    .end local v0    # "accountHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v3    # "args":Landroid/os/Bundle;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "acct":Landroid/accounts/Account;
    .end local v4    # "i":I
    .end local v5    # "length":I
    :cond_1
    iput-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mAccounts:[Landroid/accounts/Account;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarSettingsActivity;->buildLocalAccountHeaders(Ljava/util/List;)V

    .line 72
    invoke-static {}, Lcom/android/calendar/Utils;->getTardis()J

    move-result-wide v7

    const-wide/32 v9, 0xea60

    add-long/2addr v7, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 73
    new-instance v6, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v6}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 74
    .local v6, "tardisHeader":Landroid/preference/PreferenceActivity$Header;
    const v7, 0x7f0c0090

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 75
    const-string v7, "com.android.calendar.OtherPreferences"

    iput-object v7, v6, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 76
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v6    # "tardisHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x4

    .line 99
    iget-boolean v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHideMenuButtons:Z

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 84
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 87
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "nextIntent":Landroid/content/Intent;
    new-array v0, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.android.calendar"

    aput-object v4, v0, v3

    .line 89
    .local v0, "array":[Ljava/lang/String;
    const-string v3, "authorities"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1000c4 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCheckAccounts:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCheckAccounts:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    return-void
.end method
