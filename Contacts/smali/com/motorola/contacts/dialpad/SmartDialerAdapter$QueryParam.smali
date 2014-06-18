.class Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;
.super Ljava/lang/Object;
.source "SmartDialerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/dialpad/SmartDialerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryParam"
.end annotation


# instance fields
.field orderBy:Ljava/lang/String;

.field projection:[Ljava/lang/String;

.field selection:Ljava/lang/String;

.field selectionArgs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

.field uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Lcom/motorola/contacts/dialpad/SmartDialerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;
    .param p2, "x1"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter$1;

    .prologue
    .line 955
    invoke-direct {p0, p1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)V

    return-void
.end method
