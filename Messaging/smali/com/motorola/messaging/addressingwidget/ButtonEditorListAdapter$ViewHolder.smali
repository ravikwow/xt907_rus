.class Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ButtonEditorListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field address:Landroid/widget/TextView;

.field addressLabel:Landroid/widget/TextView;

.field checkBox:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$1;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;-><init>()V

    return-void
.end method
