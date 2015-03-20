.class Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttachmentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/AttachmentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachmentListAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/AttachmentListActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 353
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 354
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 6

    .prologue
    .line 357
    const/4 v1, 0x0

    .line 358
    .local v1, "count":I
    iget-object v5, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    # getter for: Lcom/motorola/messaging/activity/AttachmentListActivity;->mPositionStatus:[Z
    invoke-static {v5}, Lcom/motorola/messaging/activity/AttachmentListActivity;->access$300(Lcom/motorola/messaging/activity/AttachmentListActivity;)[Z

    move-result-object v0

    .local v0, "arr$":[Z
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-boolean v3, v0, v2

    .line 359
    .local v3, "isRemoved":Z
    if-nez v3, :cond_0

    .line 360
    add-int/lit8 v1, v1, 0x1

    .line 358
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v3    # "isRemoved":Z
    :cond_1
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 371
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 376
    iget-object v5, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    # invokes: Lcom/motorola/messaging/activity/AttachmentListActivity;->convertPosition(I)I
    invoke-static {v5, p1}, Lcom/motorola/messaging/activity/AttachmentListActivity;->access$400(Lcom/motorola/messaging/activity/AttachmentListActivity;I)I

    move-result v4

    .line 378
    .local v4, "realPosition":I
    if-nez p2, :cond_1

    .line 379
    iget-object v5, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030003

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 384
    new-instance v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;

    invoke-direct {v1, v8}, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;-><init>(Lcom/motorola/messaging/activity/AttachmentListActivity$1;)V

    .line 385
    .local v1, "holder":Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;
    const v5, 0x7f090001

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->text:Landroid/widget/TextView;

    .line 386
    const/high16 v5, 0x7f090000

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 387
    const v5, 0x7f09000a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->btn:Landroid/widget/ImageButton;

    .line 388
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 390
    iget-object v5, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 391
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 399
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :goto_0
    iget-object v5, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    # getter for: Lcom/motorola/messaging/activity/AttachmentListActivity;->mObjectsList:Ljava/util/List;
    invoke-static {v5}, Lcom/motorola/messaging/activity/AttachmentListActivity;->access$600(Lcom/motorola/messaging/activity/AttachmentListActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 401
    .local v2, "item":Ljava/lang/Object;
    instance-of v5, v2, Ljava/util/List;

    if-eqz v5, :cond_2

    .line 402
    iget-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->text:Landroid/widget/TextView;

    const-string v6, "Slideshow"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x7f02007f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 433
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    # getter for: Lcom/motorola/messaging/activity/AttachmentListActivity;->mListMode:I
    invoke-static {v5}, Lcom/motorola/messaging/activity/AttachmentListActivity;->access$200(Lcom/motorola/messaging/activity/AttachmentListActivity;)I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 434
    iget-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->btn:Landroid/widget/ImageButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->btn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter$1;

    invoke-direct {v6, p0, v4}, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter$1;-><init>(Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    :goto_2
    return-object p2

    .line 395
    .end local v1    # "holder":Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;
    .end local v2    # "item":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;

    .restart local v1    # "holder":Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;
    goto :goto_0

    .line 406
    .restart local v2    # "item":Ljava/lang/Object;
    :cond_2
    instance-of v5, v2, Lcom/motorola/messaging/model/MediaModel;

    if-eqz v5, :cond_0

    move-object v3, v2

    .line 407
    check-cast v3, Lcom/motorola/messaging/model/MediaModel;

    .line 408
    .local v3, "model":Lcom/motorola/messaging/model/MediaModel;
    iget-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/motorola/messaging/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    invoke-virtual {v3}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 421
    :pswitch_0
    iget-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    check-cast v3, Lcom/motorola/messaging/model/AudioModel;

    .end local v3    # "model":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v3}, Lcom/motorola/messaging/model/AudioModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 411
    .restart local v3    # "model":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_1
    iget-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x7f020080

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 414
    :pswitch_2
    check-cast v3, Lcom/motorola/messaging/model/VcardModel;

    .end local v3    # "model":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v3}, Lcom/motorola/messaging/model/VcardModel;->getLocation()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 415
    iget-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x7f02007d

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 417
    :cond_3
    iget-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x7f020081

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 424
    .restart local v3    # "model":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_3
    iget-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    check-cast v3, Lcom/motorola/messaging/model/ImageModel;

    .end local v3    # "model":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v3}, Lcom/motorola/messaging/model/ImageModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 427
    .restart local v3    # "model":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_4
    iget-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    check-cast v3, Lcom/motorola/messaging/model/VideoModel;

    .end local v3    # "model":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v3}, Lcom/motorola/messaging/model/VideoModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 442
    :cond_4
    iget-object v5, v1, Lcom/motorola/messaging/activity/AttachmentListActivity$ViewHolder;->btn:Landroid/widget/ImageButton;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 409
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
