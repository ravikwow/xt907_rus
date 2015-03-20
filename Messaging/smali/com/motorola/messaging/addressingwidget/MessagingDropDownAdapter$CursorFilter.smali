.class Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$CursorFilter;
.super Landroid/widget/Filter;
.source "MessagingDropDownAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorFilter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/CursorAdapter;

.field final synthetic this$0:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;Landroid/widget/CursorAdapter;)V
    .locals 0
    .param p2, "adapter"    # Landroid/widget/CursorAdapter;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$CursorFilter;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 291
    iput-object p2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$CursorFilter;->mAdapter:Landroid/widget/CursorAdapter;

    .line 292
    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resultValue"    # Ljava/lang/Object;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$CursorFilter;->mAdapter:Landroid/widget/CursorAdapter;

    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "resultValue":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 301
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$CursorFilter;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;

    # setter for: Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;
    invoke-static {v2, p1}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->access$202(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 302
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$CursorFilter;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/CursorAdapter;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 304
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 305
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 307
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 312
    :goto_0
    return-object v1

    .line 309
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 310
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 321
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$CursorFilter;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;

    # getter for: Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->access$200(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$CursorFilter;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 324
    .local v0, "oldCursor":Landroid/database/Cursor;
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$CursorFilter;->mAdapter:Landroid/widget/CursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 330
    .end local v0    # "oldCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 326
    .restart local v0    # "oldCursor":Landroid/database/Cursor;
    :cond_1
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eq v1, v0, :cond_0

    .line 327
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$CursorFilter;->mAdapter:Landroid/widget/CursorAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    invoke-virtual {v2, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
