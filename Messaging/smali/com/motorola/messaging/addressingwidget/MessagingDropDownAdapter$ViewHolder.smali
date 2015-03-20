.class public Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MessagingDropDownAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public contactAddress:Landroid/widget/TextView;

.field public contactInfo:Landroid/widget/TextView;

.field public contactName:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
