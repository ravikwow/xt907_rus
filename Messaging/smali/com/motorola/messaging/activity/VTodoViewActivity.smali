.class public Lcom/motorola/messaging/activity/VTodoViewActivity;
.super Landroid/app/Activity;
.source "VTodoViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/activity/VTodoViewActivity$VTodoParserAsyncTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/activity/VTodoViewActivity;Landroid/net/Uri;)Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/VTodoViewActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/VTodoViewActivity;->parseVTodo(Landroid/net/Uri;)Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/activity/VTodoViewActivity;Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/VTodoViewActivity;
    .param p1, "x1"    # Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/VTodoViewActivity;->updateViewFromCalendarEvent(Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;)V

    return-void
.end method

.method private buildBoldString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p1, "bold"    # Ljava/lang/String;
    .param p2, "normal"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 188
    .local v0, "bld":Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d001c

    invoke-direct {v1, p0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 189
    .local v1, "span":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 190
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 191
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 192
    return-object v0
.end method

.method public static formatDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mills"    # J

    .prologue
    .line 131
    const v1, 0x18016

    .line 134
    .local v1, "flags":I
    invoke-static {p0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "date":Ljava/lang/String;
    return-object v0
.end method

.method private isOverdue(J)Z
    .locals 9
    .param p1, "time"    # J

    .prologue
    const-wide/32 v7, 0x5265c00

    const/4 v0, 0x0

    .line 173
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    sget-wide v1, Lcom/motorola/messaging/provider/Tasks$Events;->OFFSET_TIME_IN_MILLSECONDS:J

    add-long/2addr v1, p1

    div-long/2addr v1, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/motorola/messaging/provider/Tasks$Events;->OFFSET_TIME_IN_MILLSECONDS:J

    add-long/2addr v3, v5

    div-long/2addr v3, v7

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 178
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseVTodo(Landroid/net/Uri;)Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;
    .locals 5
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, "vcalEvent":Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;
    :try_start_0
    invoke-static {p0, p1}, Lcom/motorola/calendarcommon/vcal/VCalUtils;->parseVcal(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 72
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "VTodoViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "VTodoViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I/O error when reading the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "VTodoViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no permisson  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPriorityPercentage(II)V
    .locals 11
    .param p1, "priority"    # I
    .param p2, "percentage"    # I

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 195
    const v5, 0x7f09007e

    invoke-virtual {p0, v5}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 196
    .local v1, "label":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/motorola/messaging/activity/VTodoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 197
    .local v3, "res":Landroid/content/res/Resources;
    const-string v4, ""

    .line 199
    .local v4, "text":Ljava/lang/String;
    const v5, 0x7f09007d

    invoke-virtual {p0, v5}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 200
    .local v2, "priorityImage":Landroid/widget/ImageView;
    if-ne p1, v10, :cond_1

    .line 201
    const v5, 0x7f020049

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    const v5, 0x7f0b01de

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    :goto_0
    const/16 v5, 0xa

    if-ge p2, v5, :cond_0

    if-lez p2, :cond_0

    .line 214
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    const v5, 0x7f0b026d

    invoke-virtual {p0, v5}, Lcom/motorola/messaging/activity/VTodoViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    mul-int/lit8 v7, p2, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 220
    :cond_0
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 221
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    :goto_2
    const v5, 0x7f09007c

    invoke-virtual {p0, v5}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, "container":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-ne v5, v9, :cond_5

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 229
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :goto_3
    return-void

    .line 204
    .end local v0    # "container":Landroid/view/View;
    :cond_1
    const/4 v5, 0x3

    if-le p1, v5, :cond_2

    .line 205
    const v5, 0x7f02004a

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    const v5, 0x7f0b01e0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 217
    :cond_3
    const v5, 0x7f0b026e

    invoke-virtual {p0, v5}, Lcom/motorola/messaging/activity/VTodoViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    mul-int/lit8 v7, p2, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 224
    :cond_4
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 231
    .restart local v0    # "container":Landroid/view/View;
    :cond_5
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private setTime(JJ)V
    .locals 11
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    const v10, 0x7f0b0267

    const-wide/16 v8, -0x1

    .line 141
    const/4 v2, 0x0

    .local v2, "startTime":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 143
    .local v0, "endTime":Landroid/text/SpannableStringBuilder;
    const v6, 0x7f090085

    invoke-virtual {p0, v6}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 144
    .local v4, "timeContainer":Landroid/view/View;
    const v6, 0x7f090088

    invoke-virtual {p0, v6}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 145
    .local v5, "timeView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/motorola/messaging/activity/VTodoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 146
    .local v1, "res":Landroid/content/res/Resources;
    cmp-long v6, p1, v8

    if-nez v6, :cond_0

    cmp-long v6, p3, v8

    if-nez v6, :cond_0

    .line 147
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :goto_0
    return-void

    .line 152
    :cond_0
    cmp-long v6, p1, v8

    if-eqz v6, :cond_1

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b020f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p1, p2}, Lcom/motorola/messaging/activity/VTodoViewActivity;->formatDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/motorola/messaging/activity/VTodoViewActivity;->buildBoldString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 155
    :cond_1
    cmp-long v6, p3, v8

    if-eqz v6, :cond_2

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0210

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p3, p4}, Lcom/motorola/messaging/activity/VTodoViewActivity;->formatDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/motorola/messaging/activity/VTodoViewActivity;->buildBoldString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 159
    :cond_2
    cmp-long v6, p1, v8

    if-eqz v6, :cond_3

    cmp-long v6, p3, v8

    if-eqz v6, :cond_3

    .line 160
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 161
    .local v3, "text":Landroid/text/SpannableStringBuilder;
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 162
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 169
    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 163
    .end local v3    # "text":Landroid/text/SpannableStringBuilder;
    :cond_3
    cmp-long v6, p1, v8

    if-eqz v6, :cond_4

    .line 164
    move-object v3, v2

    .restart local v3    # "text":Landroid/text/SpannableStringBuilder;
    goto :goto_1

    .line 166
    .end local v3    # "text":Landroid/text/SpannableStringBuilder;
    :cond_4
    move-object v3, v0

    .restart local v3    # "text":Landroid/text/SpannableStringBuilder;
    goto :goto_1
.end method

.method private updateViewFromCalendarEvent(Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;)V
    .locals 14
    .param p1, "ce"    # Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 76
    const v8, 0x7f090073

    invoke-virtual {p0, v8}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 77
    .local v0, "completedCheckBox":Landroid/widget/CheckBox;
    const v8, 0x7f090074

    invoke-virtual {p0, v8}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 78
    .local v4, "starred":Landroid/widget/CheckBox;
    const v8, 0x7f090090

    invoke-virtual {p0, v8}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 79
    .local v5, "tagContainerView":Landroid/view/View;
    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 80
    invoke-virtual {v4, v12}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 81
    invoke-virtual {v5, v12}, Landroid/view/View;->setClickable(Z)V

    .line 83
    const v8, 0x7f09007f

    invoke-virtual {p0, v8}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 85
    const v8, 0x7f090095

    invoke-virtual {p0, v8}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 86
    const v8, 0x7f090082

    invoke-virtual {p0, v8}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 87
    const v8, 0x7f090089

    invoke-virtual {p0, v8}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 90
    const v8, 0x7f09006f

    invoke-virtual {p0, v8}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 91
    .local v7, "title":Landroid/widget/TextView;
    iget-object v8, p1, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->summary:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 92
    iget-object v8, p1, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->summary:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    const v8, 0x7f090072

    invoke-virtual {p0, v8}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, -0xff0001

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    const v8, 0x7f09008e

    invoke-virtual {p0, v8}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 98
    .local v1, "des":Landroid/widget/TextView;
    const v8, 0x7f09008d

    invoke-virtual {p0, v8}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "desContainer":Landroid/view/View;
    iget-object v8, p1, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->description:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 100
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :goto_0
    iget v8, p1, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->priority:I

    invoke-direct {p0, v8, v12}, Lcom/motorola/messaging/activity/VTodoViewActivity;->setPriorityPercentage(II)V

    .line 109
    iget-wide v8, p1, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->dtStart:J

    iget-wide v10, p1, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->due:J

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/motorola/messaging/activity/VTodoViewActivity;->setTime(JJ)V

    .line 111
    const v8, 0x7f090086

    invoke-virtual {p0, v8}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, "overDue":Landroid/view/View;
    iget-wide v8, p1, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->due:J

    invoke-direct {p0, v8, v9}, Lcom/motorola/messaging/activity/VTodoViewActivity;->isOverdue(J)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 113
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :goto_1
    const v8, 0x7f090092

    invoke-virtual {p0, v8}, Lcom/motorola/messaging/activity/VTodoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 119
    .local v6, "tagView":Landroid/widget/TextView;
    iget-object v8, p1, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->categories:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 120
    const v8, 0x7f0b01e7

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 125
    :goto_2
    return-void

    .line 102
    .end local v3    # "overDue":Landroid/view/View;
    .end local v6    # "tagView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v8, p1, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->description:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    .restart local v3    # "overDue":Landroid/view/View;
    :cond_2
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 122
    .restart local v6    # "tagView":Landroid/widget/TextView;
    :cond_3
    iget-object v8, p1, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->categories:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v2, 0x7f030028

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/activity/VTodoViewActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/motorola/messaging/activity/VTodoViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/motorola/messaging/activity/VTodoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 42
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 43
    .local v0, "fileUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 44
    const-string v2, "VTodoViewActivity"

    const-string v3, "can not get the ics file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Lcom/motorola/messaging/activity/VTodoViewActivity;->finish()V

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v2, "VTodoViewActivity"

    const-string v3, "start async task to handle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v2, Lcom/motorola/messaging/activity/VTodoViewActivity$VTodoParserAsyncTask;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/VTodoViewActivity$VTodoParserAsyncTask;-><init>(Lcom/motorola/messaging/activity/VTodoViewActivity;)V

    new-array v3, v4, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/motorola/messaging/activity/VTodoViewActivity$VTodoParserAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 56
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/messaging/activity/VTodoViewActivity;->finish()V

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
