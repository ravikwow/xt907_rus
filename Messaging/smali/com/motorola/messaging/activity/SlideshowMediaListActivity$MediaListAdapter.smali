.class Lcom/motorola/messaging/activity/SlideshowMediaListActivity$MediaListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SlideshowMediaListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SlideshowMediaListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$MediaListAdapter;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 157
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$MediaListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 158
    return-void
.end method

.method private setIconResource(Landroid/widget/ImageView;Lcom/motorola/messaging/model/MediaModel;)V
    .locals 2
    .param p1, "mediaIcon"    # Landroid/widget/ImageView;
    .param p2, "mediaModel"    # Lcom/motorola/messaging/model/MediaModel;

    .prologue
    .line 206
    invoke-virtual {p2}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    const-string v0, "SlideshowMediaListAct"

    const-string v1, "Media type not recognized."

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .end local p2    # "mediaModel":Lcom/motorola/messaging/model/MediaModel;
    :goto_0
    return-void

    .line 208
    .restart local p2    # "mediaModel":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_0
    check-cast p2, Lcom/motorola/messaging/model/AudioModel;

    .end local p2    # "mediaModel":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p2}, Lcom/motorola/messaging/model/AudioModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 211
    .restart local p2    # "mediaModel":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_1
    check-cast p2, Lcom/motorola/messaging/model/ImageModel;

    .end local p2    # "mediaModel":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p2}, Lcom/motorola/messaging/model/ImageModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 214
    .restart local p2    # "mediaModel":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_2
    check-cast p2, Lcom/motorola/messaging/model/VideoModel;

    .end local p2    # "mediaModel":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p2}, Lcom/motorola/messaging/model/VideoModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$MediaListAdapter;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mMediaList:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$100(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 173
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 179
    if-nez p2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$MediaListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030024

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 182
    new-instance v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;

    invoke-direct {v0, v4}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;-><init>(Lcom/motorola/messaging/activity/SlideshowMediaListActivity$1;)V

    .line 183
    .local v0, "holder":Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;
    const v2, 0x7f09006b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;->mediaIcon:Landroid/widget/ImageView;

    .line 184
    const v2, 0x7f09006c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;->mediaName:Landroid/widget/TextView;

    .line 185
    const v2, 0x7f09006d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;->mediaSize:Landroid/widget/TextView;

    .line 186
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 191
    :goto_0
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$MediaListAdapter;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->mMediaList:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity;->access$100(Lcom/motorola/messaging/activity/SlideshowMediaListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 194
    .local v1, "mediaItem":Lcom/motorola/messaging/model/MediaModel;
    iget-object v2, v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;->mediaName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/motorola/messaging/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v2, v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;->mediaSize:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$MediaListAdapter;->this$0:Lcom/motorola/messaging/activity/SlideshowMediaListActivity;

    const v4, 0x7f0b0014

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/motorola/messaging/model/MediaModel;->getSize()I

    move-result v7

    add-int/lit16 v7, v7, 0x3ff

    div-int/lit16 v7, v7, 0x400

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;->mediaIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$MediaListAdapter;->setIconResource(Landroid/widget/ImageView;Lcom/motorola/messaging/model/MediaModel;)V

    .line 202
    return-object p2

    .line 188
    .end local v0    # "holder":Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;
    .end local v1    # "mediaItem":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method
