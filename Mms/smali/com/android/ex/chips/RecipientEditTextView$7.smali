.class Lcom/android/ex/chips/RecipientEditTextView$7;
.super Landroid/os/AsyncTask;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;->showAlternates(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;

.field final synthetic val$alternatesPopup:Landroid/widget/ListPopupWindow;

.field final synthetic val$currentChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V
    .locals 0

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$currentChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    iput-object p3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    iput p4, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$width:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/widget/ListAdapter;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$currentChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->createAlternatesAdapter(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;
    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$1000(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1492
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$7;->doInBackground([Ljava/lang/Void;)Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/widget/ListAdapter;)V
    .locals 8
    .param p1, "result"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1500
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mAttachedToWindow:Z
    invoke-static {v3}, Lcom/android/ex/chips/RecipientEditTextView;->access$1100(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1531
    :cond_0
    :goto_0
    return-void

    .line 1503
    :cond_1
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$currentChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    invoke-static {v4, v5}, Lcom/android/ex/chips/RecipientEditTextView;->access$1200(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1505
    .local v1, "line":I
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    .line 1506
    const/4 v0, 0x0

    .line 1513
    .local v0, "bottom":I
    :goto_1
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    iget v4, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$width:I

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1514
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1515
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 1516
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1517
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v4}, Lcom/android/ex/chips/RecipientEditTextView;->access$1500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1519
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # setter for: Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I
    invoke-static {v3, v6}, Lcom/android/ex/chips/RecipientEditTextView;->access$1602(Lcom/android/ex/chips/RecipientEditTextView;I)I

    .line 1520
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    .line 1521
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$alternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1522
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1527
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I
    invoke-static {v3}, Lcom/android/ex/chips/RecipientEditTextView;->access$1600(Lcom/android/ex/chips/RecipientEditTextView;)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 1528
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I
    invoke-static {v3}, Lcom/android/ex/chips/RecipientEditTextView;->access$1600(Lcom/android/ex/chips/RecipientEditTextView;)I

    move-result v3

    invoke-virtual {v2, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1529
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # setter for: Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I
    invoke-static {v3, v6}, Lcom/android/ex/chips/RecipientEditTextView;->access$1602(Lcom/android/ex/chips/RecipientEditTextView;I)I

    goto :goto_0

    .line 1508
    .end local v0    # "bottom":I
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_2
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F
    invoke-static {v3}, Lcom/android/ex/chips/RecipientEditTextView;->access$1300(Lcom/android/ex/chips/RecipientEditTextView;)F

    move-result v3

    const/high16 v4, 0x40000000

    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mLineSpacingExtra:F
    invoke-static {v5}, Lcom/android/ex/chips/RecipientEditTextView;->access$1400(Lcom/android/ex/chips/RecipientEditTextView;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v0, v3

    .restart local v0    # "bottom":I
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1492
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$7;->onPostExecute(Landroid/widget/ListAdapter;)V

    return-void
.end method
