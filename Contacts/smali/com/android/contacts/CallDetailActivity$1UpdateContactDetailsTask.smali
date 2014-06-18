.class Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/CallDetailActivity;->updateData([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateContactDetailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/contacts/PhoneCallDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/CallDetailActivity;

.field final synthetic val$callUris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/CallDetailActivity;[Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 419
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/android/contacts/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/android/contacts/PhoneCallDetails;
    .locals 17
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 424
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v8, "callIds":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    .local v7, "arr$":[Landroid/net/Uri;
    array-length v15, v7

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v15, :cond_1

    aget-object v9, v7, v12

    .line 426
    .local v9, "callUri":Landroid/net/Uri;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_0
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 425
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 432
    .end local v9    # "callUri":Landroid/net/Uri;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-virtual {v1}, Lcom/android/contacts/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 435
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 436
    :cond_2
    const-string v1, "CallDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v11, 0x0

    .line 452
    :cond_3
    :goto_1
    return-object v11

    .line 439
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # invokes: Lcom/android/contacts/CallDetailActivity;->getContactInfo(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;
    invoke-static {v1, v10}, Lcom/android/contacts/CallDetailActivity;->access$300(Lcom/android/contacts/CallDetailActivity;Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v14

    .line 441
    .local v14, "info":Lcom/android/contacts/calllog/ContactInfo;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 442
    .local v16, "numCalls":I
    move/from16 v0, v16

    new-array v11, v0, [Lcom/android/contacts/PhoneCallDetails;

    .line 445
    .local v11, "details":[Lcom/android/contacts/PhoneCallDetails;
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    .line 446
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # invokes: Lcom/android/contacts/CallDetailActivity;->getPhoneCallDetails(Landroid/database/Cursor;Lcom/android/contacts/calllog/ContactInfo;)Lcom/android/contacts/PhoneCallDetails;
    invoke-static {v1, v10, v14}, Lcom/android/contacts/CallDetailActivity;->access$400(Lcom/android/contacts/CallDetailActivity;Landroid/database/Cursor;Lcom/android/contacts/calllog/ContactInfo;)Lcom/android/contacts/PhoneCallDetails;

    move-result-object v1

    aput-object v1, v11, v13

    .line 447
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_6

    .line 451
    :cond_5
    if-eqz v10, :cond_3

    .line 452
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 445
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 451
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_7

    .line 452
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 419
    check-cast p1, [Lcom/android/contacts/PhoneCallDetails;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/android/contacts/PhoneCallDetails;)V

    return-void
.end method

.method public onPostExecute([Lcom/android/contacts/PhoneCallDetails;)V
    .locals 32
    .param p1, "details"    # [Lcom/android/contacts/PhoneCallDetails;

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v4, 0x7f0b0098

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-virtual {v3}, Lcom/android/contacts/CallDetailActivity;->finish()V

    .line 703
    :goto_0
    return-void

    .line 470
    :cond_0
    const/4 v3, 0x0

    aget-object v19, p1, v3

    .line 471
    .local v19, "firstDetails":Lcom/android/contacts/PhoneCallDetails;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/contacts/CallDetailActivity;->access$502(Lcom/android/contacts/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/contacts/PhoneCallDetails;->numberPresentation:I

    move/from16 v28, v0

    .line 475
    .local v28, "numberPresentation":I
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->cnapName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/contacts/PhoneCallDetails;->cnapName:Ljava/lang/String;

    # setter for: Lcom/android/contacts/CallDetailActivity;->mCnapName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/contacts/CallDetailActivity;->access$602(Lcom/android/contacts/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    :cond_1
    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/android/contacts/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 481
    .local v14, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    .line 484
    .local v30, "photoUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$700(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v23

    .line 485
    .local v23, "isVoicemailNumber":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v21

    .line 489
    .local v21, "isEmergency":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$900(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/PhoneCallDetailsHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/CallDetailActivity;->access$800(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/contacts/PhoneCallDetailsHelper;->setCallDetailsHeader(Landroid/widget/TextView;Lcom/android/contacts/PhoneCallDetails;ZZ)V

    .line 494
    new-instance v3, Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-virtual {v4}, Lcom/android/contacts/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v3, v4, v0}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v9

    .line 498
    .local v9, "canPlaceCallsTo":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$700(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v22

    .line 507
    .local v22, "isSipNumber":Z
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 508
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    .line 514
    .local v27, "nameOrNumber":Ljava/lang/CharSequence;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mIsEcidAvailable:Z
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$1000(Lcom/android/contacts/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v4, 0x7f06002f

    invoke-virtual {v3, v4}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    .line 517
    .local v15, "convertView":Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/motorola/contacts/util/EcidContact;->getContainerHeight()I

    move-result v3

    if-lez v3, :cond_2

    .line 518
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    .line 519
    .local v29, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcom/motorola/contacts/util/EcidContact;->getContainerHeight()I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 520
    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    .end local v29    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const v3, 0x7f060033

    invoke-virtual {v15, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 524
    .local v12, "cityIdView":Landroid/widget/TextView;
    if-eqz v12, :cond_3

    .line 525
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Lcom/motorola/contacts/util/EcidContact;->computeDisplayName(Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v31

    .line 526
    .local v31, "strCityID":Ljava/lang/String;
    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    .end local v12    # "cityIdView":Landroid/widget/TextView;
    .end local v15    # "convertView":Landroid/widget/FrameLayout;
    .end local v31    # "strCityID":Ljava/lang/String;
    :cond_3
    if-eqz v14, :cond_7

    .line 532
    new-instance v26, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v26

    invoke-direct {v0, v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 535
    .local v26, "mainActionIntent":Landroid/content/Intent;
    const/high16 v3, 0x14000000

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 537
    const v25, 0x7f02003c

    .line 538
    .local v25, "mainActionIcon":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v4, 0x7f0b01e9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v27, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 601
    .local v24, "mainActionDescription":Ljava/lang/String;
    :goto_2
    if-nez v26, :cond_f

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$1100(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$1200(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$800(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$1300(Lcom/android/contacts/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 622
    :goto_3
    if-eqz v9, :cond_10

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$700(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/contacts/PhoneCallDetails;->numberPresentation:I

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 631
    .local v16, "displayNumber":Ljava/lang/CharSequence;
    new-instance v18, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v4, 0x7f0b0026

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/contacts/format/FormatUtils;->forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v6, 0x7f0b01ea

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v27, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4, v5}, Lcom/android/contacts/CallDetailActivity$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 638
    .local v18, "entry":Lcom/android/contacts/CallDetailActivity$ViewEntry;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 641
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    iget-object v3, v3, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/contacts/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 647
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$700(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v3, v4, v0}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canSendSmsTo(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 648
    const v3, 0x7f02006a

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "sms"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v6, 0x7f0b01eb

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v27, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/contacts/CallDetailActivity$ViewEntry;->setSecondaryAction(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 655
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, v18

    # invokes: Lcom/android/contacts/CallDetailActivity;->configureCallButton(Lcom/android/contacts/CallDetailActivity$ViewEntry;)V
    invoke-static {v3, v0}, Lcom/android/contacts/CallDetailActivity;->access$1400(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$ViewEntry;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, v16

    # setter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v3, v0}, Lcom/android/contacts/CallDetailActivity;->access$1502(Lcom/android/contacts/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    # setter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v3, v4}, Lcom/android/contacts/CallDetailActivity;->access$1602(Lcom/android/contacts/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 664
    .end local v16    # "displayNumber":Ljava/lang/CharSequence;
    .end local v18    # "entry":Lcom/android/contacts/CallDetailActivity$ViewEntry;
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    if-eqz v9, :cond_11

    if-nez v22, :cond_11

    if-nez v23, :cond_11

    const/4 v3, 0x1

    :goto_5
    # setter for: Lcom/android/contacts/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z
    invoke-static {v4, v3}, Lcom/android/contacts/CallDetailActivity;->access$1802(Lcom/android/contacts/CallDetailActivity;Z)Z

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # invokes: Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v4}, Lcom/android/contacts/CallDetailActivity;->access$2000(Lcom/android/contacts/CallDetailActivity;)Z

    move-result v4

    # setter for: Lcom/android/contacts/CallDetailActivity;->mHasTrashOption:Z
    invoke-static {v3, v4}, Lcom/android/contacts/CallDetailActivity;->access$1902(Lcom/android/contacts/CallDetailActivity;Z)Z

    .line 667
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # invokes: Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$2000(Lcom/android/contacts/CallDetailActivity;)Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v3, 0x1

    :goto_6
    # setter for: Lcom/android/contacts/CallDetailActivity;->mHasRemoveFromCallLogOption:Z
    invoke-static {v4, v3}, Lcom/android/contacts/CallDetailActivity;->access$2102(Lcom/android/contacts/CallDetailActivity;Z)Z

    .line 668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-virtual {v3}, Lcom/android/contacts/CallDetailActivity;->invalidateOptionsMenu()V

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v4, 0x7f060024

    invoke-virtual {v3, v4}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ListView;

    .line 671
    .local v20, "historyList":Landroid/widget/ListView;
    new-instance v3, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    iget-object v5, v5, Lcom/android/contacts/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;
    invoke-static {v6}, Lcom/android/contacts/CallDetailActivity;->access$2200(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/CallTypeHelper;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # invokes: Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v7}, Lcom/android/contacts/CallDetailActivity;->access$2000(Lcom/android/contacts/CallDetailActivity;)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v10, 0x7f060025

    invoke-virtual {v7, v10}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/calllog/CallTypeHelper;[Lcom/android/contacts/PhoneCallDetails;ZZLandroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 675
    new-instance v3, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;-><init>(Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;)V

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/contacts/BackScrollManager;->bind(Lcom/android/contacts/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, v30

    # invokes: Lcom/android/contacts/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;)V
    invoke-static {v3, v0}, Lcom/android/contacts/CallDetailActivity;->access$2300(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v4, 0x7f060023

    invoke-virtual {v3, v4}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 510
    .end local v20    # "historyList":Landroid/widget/ListView;
    .end local v24    # "mainActionDescription":Ljava/lang/String;
    .end local v25    # "mainActionIcon":I
    .end local v26    # "mainActionIntent":Landroid/content/Intent;
    .end local v27    # "nameOrNumber":Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    .restart local v27    # "nameOrNumber":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 540
    :cond_7
    if-nez v23, :cond_8

    if-eqz v21, :cond_9

    .line 541
    :cond_8
    const/16 v26, 0x0

    .line 542
    .restart local v26    # "mainActionIntent":Landroid/content/Intent;
    const/16 v25, 0x0

    .line 543
    .restart local v25    # "mainActionIcon":I
    const/16 v24, 0x0

    .restart local v24    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 544
    .end local v24    # "mainActionDescription":Ljava/lang/String;
    .end local v25    # "mainActionIcon":I
    .end local v26    # "mainActionIntent":Landroid/content/Intent;
    :cond_9
    if-eqz v22, :cond_a

    .line 554
    const/16 v26, 0x0

    .line 555
    .restart local v26    # "mainActionIntent":Landroid/content/Intent;
    const/16 v25, 0x0

    .line 556
    .restart local v25    # "mainActionIcon":I
    const/16 v24, 0x0

    .restart local v24    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 557
    .end local v24    # "mainActionDescription":Ljava/lang/String;
    .end local v25    # "mainActionIcon":I
    .end local v26    # "mainActionIntent":Landroid/content/Intent;
    :cond_a
    if-eqz v9, :cond_e

    .line 558
    new-instance v26, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .restart local v26    # "mainActionIntent":Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string v3, "phone"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mCnapName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 565
    const-string v3, "name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mCnapName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    :cond_b
    const v25, 0x7f020031

    .line 572
    .restart local v25    # "mainActionIcon":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mIsEcidAvailable:Z
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$1000(Lcom/android/contacts/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/motorola/contacts/util/EcidContact;->doCacheLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/motorola/contacts/util/EcidContact;

    move-result-object v17

    .line 578
    .local v17, "ecidInfo":Lcom/motorola/contacts/util/EcidContact;
    if-eqz v17, :cond_d

    .line 579
    invoke-virtual/range {v17 .. v17}, Lcom/motorola/contacts/util/EcidContact;->getContactName()Ljava/lang/String;

    move-result-object v13

    .line 580
    .local v13, "contactName":Ljava/lang/String;
    if-eqz v13, :cond_c

    .line 581
    const-string v3, "name"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    :cond_c
    invoke-virtual/range {v17 .. v17}, Lcom/motorola/contacts/util/EcidContact;->getBizName()Ljava/lang/String;

    move-result-object v11

    .line 585
    .local v11, "bizName":Ljava/lang/String;
    if-eqz v11, :cond_d

    .line 587
    const-string v3, "company"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    .end local v11    # "bizName":Ljava/lang/String;
    .end local v13    # "contactName":Ljava/lang/String;
    .end local v17    # "ecidInfo":Lcom/motorola/contacts/util/EcidContact;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v4, 0x7f0b01e8

    invoke-virtual {v3, v4}, Lcom/android/contacts/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 596
    .end local v24    # "mainActionDescription":Ljava/lang/String;
    .end local v25    # "mainActionIcon":I
    .end local v26    # "mainActionIntent":Landroid/content/Intent;
    :cond_e
    const/16 v26, 0x0

    .line 597
    .restart local v26    # "mainActionIntent":Landroid/content/Intent;
    const/16 v25, 0x0

    .line 598
    .restart local v25    # "mainActionIcon":I
    const/16 v24, 0x0

    .restart local v24    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 607
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$1100(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$1100(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$1200(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$1200(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v4, v0, v1}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$1;-><init>(Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$1200(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$800(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$1300(Lcom/android/contacts/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 659
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    # invokes: Lcom/android/contacts/CallDetailActivity;->disableCallButton()V
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$1700(Lcom/android/contacts/CallDetailActivity;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const/4 v4, 0x0

    # setter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v3, v4}, Lcom/android/contacts/CallDetailActivity;->access$1502(Lcom/android/contacts/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const/4 v4, 0x0

    # setter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v3, v4}, Lcom/android/contacts/CallDetailActivity;->access$1602(Lcom/android/contacts/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 664
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 667
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_6
.end method
