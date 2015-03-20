.class public Lcom/motorola/messaging/activity/ConversationsSearchActivity;
.super Landroid/app/Activity;
.source "ConversationsSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/activity/ConversationsSearchActivity$SearchResultsAdapter;
    }
.end annotation


# static fields
.field private static final THREAD_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mLastQuery:Ljava/lang/String;

.field private mResultsAdapter:Lcom/motorola/messaging/activity/ConversationsSearchActivity$SearchResultsAdapter;

.field private mResultsText:Landroid/widget/TextView;

.field private mTextInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->THREAD_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/activity/ConversationsSearchActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ConversationsSearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mTextInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/activity/ConversationsSearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ConversationsSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->executeSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/messaging/activity/ConversationsSearchActivity;)Lcom/motorola/messaging/activity/ConversationsSearchActivity$SearchResultsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ConversationsSearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mResultsAdapter:Lcom/motorola/messaging/activity/ConversationsSearchActivity$SearchResultsAdapter;

    return-object v0
.end method

.method private executeSearch(Ljava/lang/String;)V
    .locals 9
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 149
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pattern"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 155
    .local v2, "uri":Landroid/net/Uri;
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mLastQuery:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 163
    .local v8, "resultCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 165
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mResultsAdapter:Lcom/motorola/messaging/activity/ConversationsSearchActivity$SearchResultsAdapter;

    invoke-virtual {v0, v8}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mResultsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b01a8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    :catch_0
    move-exception v7

    .line 167
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "ConversationsSearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not perform search with given query:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {v8}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 169
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private isMms(JJ)Z
    .locals 9
    .param p1, "messageId"    # J
    .param p3, "msgDate"    # J

    .prologue
    const/4 v5, 0x0

    .line 201
    const/4 v8, 0x1

    .line 202
    .local v8, "isMms":Z
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 204
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->THREAD_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 208
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 209
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v8, 0x1

    .line 210
    :goto_0
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 213
    :cond_0
    return v8

    .line 209
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mActionBar:Landroid/app/ActionBar;

    .line 145
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 146
    return-void
.end method


# virtual methods
.method protected launchResult(Landroid/database/Cursor;IJ)V
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 178
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 180
    const-string v8, "thread_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 181
    .local v5, "threadId":J
    const-string v8, "_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 182
    .local v1, "messageId":J
    const-string v8, "date"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 184
    .local v3, "msgDate":J
    sget-object v8, Lcom/motorola/messaging/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-static {v8, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 186
    .local v7, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v0, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string v8, "select_id"

    invoke-virtual {v0, v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 194
    const-string v9, "select_type"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->isMms(JJ)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "mms"

    :goto_0
    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v8, "highlight"

    iget-object v9, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mLastQuery:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void

    .line 194
    :cond_0
    const-string v8, "sms"

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.action.SEARCH"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    const v6, 0x7f03001b

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 75
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->setupActionBar()V

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "query":Ljava/lang/String;
    const/4 v0, 0x0

    .line 79
    .local v0, "initialText":Ljava/lang/String;
    const v6, 0x7f090054

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mTextInput:Landroid/widget/EditText;

    .line 81
    if-eqz p1, :cond_1

    .line 84
    const-string v6, "CURRENT_QUERY_STRING"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    const-string v6, "CURRENT_TEXT_INPUT_STRING"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    iget-object v6, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mTextInput:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v6, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mTextInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 97
    iget-object v6, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mTextInput:Landroid/widget/EditText;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 98
    iget-object v6, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mTextInput:Landroid/widget/EditText;

    new-instance v7, Lcom/motorola/messaging/activity/ConversationsSearchActivity$1;

    invoke-direct {v7, p0}, Lcom/motorola/messaging/activity/ConversationsSearchActivity$1;-><init>(Lcom/motorola/messaging/activity/ConversationsSearchActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 110
    const v6, 0x7f090056

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mResultsText:Landroid/widget/TextView;

    .line 113
    const v6, 0x7f090055

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 114
    .local v4, "searchButton":Landroid/widget/Button;
    new-instance v6, Lcom/motorola/messaging/activity/ConversationsSearchActivity$2;

    invoke-direct {v6, p0}, Lcom/motorola/messaging/activity/ConversationsSearchActivity$2;-><init>(Lcom/motorola/messaging/activity/ConversationsSearchActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v6, Lcom/motorola/messaging/activity/ConversationsSearchActivity$SearchResultsAdapter;

    invoke-direct {v6, p0, v8}, Lcom/motorola/messaging/activity/ConversationsSearchActivity$SearchResultsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v6, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mResultsAdapter:Lcom/motorola/messaging/activity/ConversationsSearchActivity$SearchResultsAdapter;

    .line 124
    const v6, 0x7f090057

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 125
    .local v3, "resultsList":Landroid/widget/ListView;
    iget-object v6, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mResultsAdapter:Lcom/motorola/messaging/activity/ConversationsSearchActivity$SearchResultsAdapter;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    new-instance v6, Lcom/motorola/messaging/activity/ConversationsSearchActivity$3;

    invoke-direct {v6, p0}, Lcom/motorola/messaging/activity/ConversationsSearchActivity$3;-><init>(Lcom/motorola/messaging/activity/ConversationsSearchActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    invoke-direct {p0, v2}, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->executeSearch(Ljava/lang/String;)V

    .line 135
    .end local v0    # "initialText":Ljava/lang/String;
    .end local v2    # "query":Ljava/lang/String;
    .end local v3    # "resultsList":Landroid/widget/ListView;
    .end local v4    # "searchButton":Landroid/widget/Button;
    :cond_0
    return-void

    .line 87
    .restart local v0    # "initialText":Ljava/lang/String;
    .restart local v2    # "query":Ljava/lang/String;
    :cond_1
    const-string v6, "query"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    move-object v0, v2

    .line 90
    new-instance v5, Landroid/provider/SearchRecentSuggestions;

    const-string v6, "com.motorola.messaging.search"

    const/4 v7, 0x1

    invoke-direct {v5, p0, v6, v7}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 92
    .local v5, "suggestions":Landroid/provider/SearchRecentSuggestions;
    invoke-virtual {v5, v2, v8}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    return v1

    .line 248
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    const-string v0, "CURRENT_QUERY_STRING"

    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mLastQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "CURRENT_TEXT_INPUT_STRING"

    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mTextInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method
