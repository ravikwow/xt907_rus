.class Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SmartDialerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/SmartDialerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAsyncQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .line 762
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 763
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 701
    .local v0, "currTime":J
    packed-switch p1, :pswitch_data_0

    .line 759
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 703
    .restart local p2    # "cookie":Ljava/lang/Object;
    :pswitch_0
    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    const-string v3, "QUERY_MOST_RECENT finish"

    # invokes: Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$500(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    .line 704
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->activityGone:Z
    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$600(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 705
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # setter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v2, p3}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$702(Lcom/android/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 706
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    iget-object v3, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$700(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 707
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->updateSingleItemAndTitle()V

    goto :goto_0

    .line 709
    :cond_2
    if-eqz p3, :cond_3

    .line 710
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 714
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$700(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$700(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 716
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # setter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v2, v6}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$702(Lcom/android/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    .line 725
    :pswitch_1
    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_6

    .line 726
    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$400()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QUERY_EXACT_MATCHED cost time =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContactStartTime:J
    invoke-static {v4}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$800(Lcom/android/contacts/dialpad/SmartDialerAdapter;)J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$500(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    .line 734
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->activityGone:Z
    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$600(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 735
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # setter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v2, p3}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$902(Lcom/android/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 736
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mQueriedDigits:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$1002(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 737
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    iget-object v3, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$900(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 739
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$900(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$900(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 740
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$000(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->showList(Z)V

    .line 746
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->updateSingleItemAndTitle()V

    goto/16 :goto_0

    .line 728
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_6
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_4

    .line 729
    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$400()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QUERY_FUZZY_MATCHED cost time =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContactStartTime:J
    invoke-static {v4}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$800(Lcom/android/contacts/dialpad/SmartDialerAdapter;)J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$500(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    goto :goto_1

    .line 742
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_7
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    iget-boolean v2, v2, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAutoExpandList:Z

    if-eqz v2, :cond_5

    .line 743
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$000(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->showList(Z)V

    goto :goto_2

    .line 748
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_8
    if-eqz p3, :cond_9

    .line 749
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 751
    :cond_9
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$900(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 752
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$900(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 753
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # setter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v2, v6}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$902(Lcom/android/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
