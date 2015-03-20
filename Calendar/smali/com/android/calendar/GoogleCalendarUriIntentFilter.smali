.class public Lcom/android/calendar/GoogleCalendarUriIntentFilter;
.super Landroid/app/Activity;
.source "GoogleCalendarUriIntentFilter.java"


# static fields
.field private static final EVENT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private extractEidAndEmail(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    .line 73
    :try_start_0
    const-string v9, "eid"

    invoke-virtual {p1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "eidParam":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 135
    .end local v4    # "eidParam":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v8

    .line 79
    .restart local v4    # "eidParam":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    invoke-static {v4, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 82
    .local v0, "decodedBytes":[B
    const/4 v7, 0x0

    .local v7, "spacePosn":I
    :goto_1
    array-length v9, v0

    if-ge v7, v9, :cond_0

    .line 83
    aget-byte v9, v0, v7

    const/16 v10, 0x20

    if-ne v9, v10, :cond_4

    .line 84
    array-length v9, v0

    sub-int/2addr v9, v7

    add-int/lit8 v6, v9, -0x1

    .line 85
    .local v6, "emailLen":I
    if-eqz v7, :cond_0

    const/4 v9, 0x3

    if-lt v6, v9, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "domain":Ljava/lang/String;
    array-length v9, v0

    add-int/lit8 v9, v9, -0x2

    aget-byte v9, v0, v9

    const/16 v10, 0x40

    if-ne v9, v10, :cond_2

    .line 92
    add-int/lit8 v6, v6, -0x1

    .line 94
    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v0, v9

    sparse-switch v9, :sswitch_data_0

    .line 111
    const-string v9, "GoogleCalendarUriIntentFilter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected one letter domain: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v1, "%"

    .line 120
    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v3, v0, v9, v7}, Ljava/lang/String;-><init>([BII)V

    .line 121
    .local v3, "eid":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v9, v7, 0x1

    invoke-direct {v5, v0, v9, v6}, Ljava/lang/String;-><init>([BII)V

    .line 125
    .local v5, "email":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    :cond_3
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    move-object v8, v9

    goto :goto_0

    .line 96
    .end local v3    # "eid":Ljava/lang/String;
    .end local v5    # "email":Ljava/lang/String;
    :sswitch_0
    const-string v1, "gmail.com"

    .line 97
    goto :goto_2

    .line 99
    :sswitch_1
    const-string v1, "group.calendar.google.com"

    .line 100
    goto :goto_2

    .line 102
    :sswitch_2
    const-string v1, "holiday.calendar.google.com"

    .line 103
    goto :goto_2

    .line 105
    :sswitch_3
    const-string v1, "import.calendar.google.com"

    .line 106
    goto :goto_2

    .line 108
    :sswitch_4
    const-string v1, "group.v.calendar.google.com"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_2

    .line 82
    .end local v1    # "domain":Ljava/lang/String;
    .end local v6    # "emailLen":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 132
    .end local v0    # "decodedBytes":[B
    .end local v4    # "eidParam":Ljava/lang/String;
    .end local v7    # "spacePosn":I
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v9, "GoogleCalendarUriIntentFilter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Punting malformed URI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_1
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
        0x6d -> :sswitch_0
        0x76 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 143
    if-eqz v9, :cond_6

    .line 144
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 145
    if-eqz v10, :cond_5

    .line 146
    invoke-direct {p0, v10}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->extractEidAndEmail(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v11

    .line 149
    if-eqz v11, :cond_5

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_sync_id LIKE \"%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ownerAccount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "calendar_access_level desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 160
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v6, :cond_0

    .line 161
    const-string v0, "GoogleCalendarUriIntentFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTE: found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " matches on event with id=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v11, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 169
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 170
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 175
    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-nez v11, :cond_1

    .line 176
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    :try_start_0
    new-instance v1, Lcom/android/calendarcommon/Duration;

    invoke-direct {v1}, Lcom/android/calendarcommon/Duration;-><init>()V

    .line 184
    invoke-virtual {v1, v0}, Lcom/android/calendarcommon/Duration;->parse(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Lcom/android/calendarcommon/Duration;->getMillis()J
    :try_end_0
    .catch Lcom/android/calendarcommon/DateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v0

    add-long/2addr v0, v4

    .line 188
    cmp-long v11, v0, v4

    if-ltz v11, :cond_0

    .line 197
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 202
    const-string v2, "RESPOND"

    const-string v9, "action"

    invoke-virtual {v10, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    :try_start_1
    const-string v2, "rst"

    invoke-virtual {v10, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v2, v8

    :goto_1
    move v8, v2

    .line 222
    :cond_2
    :goto_2
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v3

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 224
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    const-class v2, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v3, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 226
    const-string v2, "beginTime"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 227
    const-string v2, "endTime"

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 228
    if-eqz v8, :cond_3

    .line 229
    const-string v0, "attendeeStatus"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    :cond_3
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 248
    :goto_3
    return-void

    :pswitch_0
    move v2, v6

    .line 207
    goto :goto_1

    :pswitch_1
    move v2, v7

    .line 210
    goto :goto_1

    .line 212
    :pswitch_2
    const/4 v2, 0x4

    goto :goto_1

    .line 236
    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_5
    :try_start_2
    invoke-virtual {p0, v9}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;)Z
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 247
    :cond_6
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 243
    :catch_0
    move-exception v0

    goto :goto_4

    .line 215
    :catch_1
    move-exception v2

    goto :goto_2

    .line 191
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
