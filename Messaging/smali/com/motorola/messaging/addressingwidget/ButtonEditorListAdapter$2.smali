.class Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$2;
.super Ljava/lang/Object;
.source "ButtonEditorListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;I)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$2;->this$0:Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

    iput p2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$2;->this$0:Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

    iget v1, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->toogleCheck(I)V

    .line 159
    return-void
.end method
