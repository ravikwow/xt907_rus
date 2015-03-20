.class public abstract Lstatemap/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TRANSITION_DEFINED_DEFAULT:Ljava/lang/Integer;

.field public static final TRANSITION_DEFINED_LOCALLY:Ljava/lang/Integer;

.field public static final TRANSITION_UNDEFINED:Ljava/lang/Integer;

.field private static final serialVersionUID:J = 0x60000L


# instance fields
.field private final _id:I

.field private final _name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lstatemap/State;->TRANSITION_UNDEFINED:Ljava/lang/Integer;

    .line 130
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lstatemap/State;->TRANSITION_DEFINED_LOCALLY:Ljava/lang/Integer;

    .line 136
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lstatemap/State;->TRANSITION_DEFINED_DEFAULT:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lstatemap/State;->_name:Ljava/lang/String;

    .line 64
    iput p2, p0, Lstatemap/State;->_id:I

    .line 65
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lstatemap/State;->_id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lstatemap/State;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lstatemap/State;->_name:Ljava/lang/String;

    return-object v0
.end method
