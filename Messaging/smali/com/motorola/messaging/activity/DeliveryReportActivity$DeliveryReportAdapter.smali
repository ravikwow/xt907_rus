.class public Lcom/motorola/messaging/activity/DeliveryReportActivity$DeliveryReportAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DeliveryReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/DeliveryReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeliveryReportAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;>;"
    const v0, 0x7f03000e

    const v1, 0x7f090038

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 133
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/DeliveryReportActivity$DeliveryReportAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 134
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 146
    if-nez p2, :cond_1

    .line 147
    iget-object v4, p0, Lcom/motorola/messaging/activity/DeliveryReportActivity$DeliveryReportAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03000e

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 151
    new-instance v1, Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;

    invoke-direct {v1, v7}, Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;-><init>(Lcom/motorola/messaging/activity/DeliveryReportActivity$1;)V

    .line 152
    .local v1, "holder":Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;
    const v4, 0x7f090038

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;->recipient:Landroid/widget/TextView;

    .line 153
    const v4, 0x7f090039

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;->status:Landroid/widget/TextView;

    .line 154
    const v4, 0x7f090005

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 155
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;

    .line 165
    .local v2, "item":Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;
    iget-object v3, v2, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;->mRecipient:Ljava/lang/String;

    .line 166
    .local v3, "recipient":Ljava/lang/String;
    invoke-static {v3, v6, v6}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;ZZ)Lcom/motorola/messaging/contact/Contact;

    move-result-object v0

    .line 167
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 170
    :cond_0
    iget-object v4, v1, Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;->recipient:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v4, v1, Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;->status:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;->mStatusText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget v4, v2, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;->mStatus:I

    packed-switch v4, :pswitch_data_0

    .line 181
    iget-object v4, v1, Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f020078

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    :goto_1
    return-object p2

    .line 159
    .end local v0    # "contact":Lcom/motorola/messaging/contact/Contact;
    .end local v1    # "holder":Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;
    .end local v2    # "item":Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;
    .end local v3    # "recipient":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;

    .restart local v1    # "holder":Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;
    goto :goto_0

    .line 175
    .restart local v0    # "contact":Lcom/motorola/messaging/contact/Contact;
    .restart local v2    # "item":Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;
    .restart local v3    # "recipient":Ljava/lang/String;
    :pswitch_0
    iget-object v4, v1, Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f020075

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 178
    :pswitch_1
    iget-object v4, v1, Lcom/motorola/messaging/activity/DeliveryReportActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f020079

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method
